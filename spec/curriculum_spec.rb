ENVIRONMENTS = [
  ['production', 'https://technovationchallenge.org'],
  ['staging', 'http://technovation.staging.wpengine.com'],
];

PAGES = [
  'getting-started',
  'ideation-1',
  'ideation-2',
  'ideation-3',
  'coding-1',
  'ideation-4',
  'ideation-5',
  'ideation-6',
  'coding-2',
  'ideation-7',
  'ideation-8',
  'entrepreneurship-1',
  'coding-3',
  'ideation-9',
  'entrepreneurship-2',
  'coding-1-challenge',
  'coding-4',
  'entrepreneurship-3',
  'entrepreneurship-4',
  'coding-5',
  'coding-6',
  'entrepreneurship-5',
  'entrepreneurship-6',
  'coding-7',
  'coding-challenge-2',
  'coding-8',
  'coding-9',
  'entrepreneurship-7-calculating-revenue',
  'entrepreneurship-8-operating-costs-and-business-models',
  'coding-10',
  'coding-11-sensors-and-components',
  'entrepreneurship-9-business-plan',
  'pitch-1-outline-your-pitch-video',
  'coding-12-storing-data-locally',
  'coding-13-cloud-storage-and-apis',
  'pitch-2-record-your-pitch-video',
  'coding-14-debugging-tips-in-app-inventor-and-thunkable',
  'coding-15-flowcharts',
  'pitch-3-edit-your-pitch-video',
  'pitch-4-create-a-pitch-presentation',
  'submitting-your-idea-to-the-competition',
];

RSpec.describe "curriculum pages", type: :feature do
  ENVIRONMENTS.each do |env, url|
    context "on #{env}" do
      PAGES.each do |path_fragment|
        context path_fragment do
          before(:each) do
            visit "#{url}/curriculum/#{path_fragment}/"
            skip "SKIP_SCREENSHOTS set in environment" if ENV.fetch("SKIP_SCREENSHOTS", false)
            page.save_screenshot("tmp/#{env}/#{path_fragment}.png")
          end

          it "should have header" do
            expect(page).to have_css('h1.fl-heading')
          end
        end
      end
    end
  end
end
