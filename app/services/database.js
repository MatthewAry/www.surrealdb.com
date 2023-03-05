import Service from '@ember/service';
import { inject } from '@ember/service';

const tables = [
	'job',
	'post',
];

export default class extends Service {

	@inject surreal;

	constructor() {

		super(...arguments);

		if (typeof FastBoot === 'undefined') {
			tables.forEach(table => {
				this.surreal.sync('LIVE SELECT * FROM table($tb)', {
					tb: table,
				});
			});
		}

	}

}
