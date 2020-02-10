## Overtime App

## key requirement : company needs documentation that salaried employees did or not get overtime each week

## Models
- Post -> date:date rationale:text (X)
- User-> Devise (X)
- AdminUser -> STI (X)

## Features :
- Approval Workflow
- SMS Sending -> link toapproval or overtime input
- Administrate admin dashboard
- Email summary tomanagers for approval
- Needs to be documented if employee did or not log overtime

## UI:
- Boostrap -> formatting (X)

## Refactor TODOS:
- Add full_name method for users (X)
- Refactor user association intégration test in post_spec
