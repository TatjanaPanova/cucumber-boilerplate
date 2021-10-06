import openWebsite from 'src/support/action/openWebsite';

describe('openWebsite', () => {
    beforeEach(() => {
        global.browser = {
            url: jest.fn(),
            options: {
                baseUrl: 'http://demoshop24.com',
            },
        };
    });

    it('should call url with the given url if the first param is `url`', async () => {
        await openWebsite('url', 'http://demoshop24.com');

        expect(global.browser.url).toHaveBeenCalledTimes(1);
        expect(global.browser.url)
            .toHaveBeenCalledWith('http://demoshop24.com');
    });

    it(
        'should call url with the given path on the baseUrl if the first '
        + 'param is `site`',
        async () => {
            await openWebsite('site', '/path/to/page');

            expect(global.browser.url).toHaveBeenCalledTimes(1);
            expect(global.browser.url)
                .toHaveBeenCalledWith('http://demoshop24.com/index.php?route=account/register');
        }
    );
});
