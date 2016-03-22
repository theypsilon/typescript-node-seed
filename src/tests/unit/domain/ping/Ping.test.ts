import Ping from 'domain/ping/Ping';

describe('Ping', () => {
	describe('duplicate', () => {
		describe('when pong is given', () => {
			it('should return ping pong pong', () => {
				const actual = Ping.create("pong").duplicate().toString();
				expect(actual).to.equals("ping pong pong");
			});
		});
	});
});

