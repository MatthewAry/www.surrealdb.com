import { helper } from '@ember/component/helper';

export function url([type]) {
	switch (type) {
	case 'license':
		return 'https://github.com/surrealdb/license';
	case 'github':
		return 'https://github.com/surrealdb/surrealdb';
	case 'issues':
		return 'https://github.com/surrealdb/surrealdb/issues';
	case 'releases':
		return 'https://github.com/surrealdb/surrealdb/releases';
	case 'discussions':
		return 'https://github.com/surrealdb/surrealdb/discussions';
	//
	case 'twitter':
		return 'https://twitter.com/surrealdb';
	case 'linkedin':
		return 'https://www.linkedin.com/company/surrealdb/';
	case 'youtube':
		return 'https://www.youtube.com/channel/UCjf2teVEuYVvvVC-gFZNq6w';
	case 'discord':
		return 'https://discord.gg/surrealdb';
	case 'dev':
		return 'https://dev.to/surrealdb';
	case 'stackoverflow':
		return 'https://stackoverflow.com/questions/tagged/surrealdb';
	case 'reddit':
		return 'https://www.reddit.com/r/surrealdb/';
	case 'docker':
		return 'https://hub.docker.com/r/surrealdb/surrealdb';
	//
	case 'install':
		return 'https://github.com/surrealdb/install.surrealdb.com';
	case 'windows':
		return 'https://github.com/surrealdb/windows.surrealdb.com';
	}
}

export default helper(url);
