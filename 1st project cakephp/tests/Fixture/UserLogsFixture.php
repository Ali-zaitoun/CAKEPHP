<?php
declare(strict_types=1);

namespace App\Test\Fixture;

use Cake\TestSuite\Fixture\TestFixture;

/**
 * UserLogsFixture
 */
class UserLogsFixture extends TestFixture
{
    /**
     * Init method
     *
     * @return void
     */
    public function init(): void
    {
        $this->records = [
            [
                'id' => 1,
                'user_id' => 1,
                'ip' => 'Lorem ipsum dolor sit amet',
                'created' => '2022-08-17 18:47:55',
                'modified' => '2022-08-17 18:47:55',
            ],
        ];
        parent::init();
    }
}
