import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';
import FeedbackPage from './feedbackPage';

Given('I open feedback page', () => {
  FeedbackPage.visit();
});

When('I fill feedback form', () => {
  const feedbackData = {
    name: 'Name',
    email: 'name@email.com',
    subject: 'Subject',
    comment: 'Just a comment',
  };

  FeedbackPage.fillFeedbackForm(feedbackData);
});

When('I click on send button', () => {
  FeedbackPage.submitFeedbackForm();
});
