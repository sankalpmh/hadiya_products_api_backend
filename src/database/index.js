import { Sequelize } from 'sequelize';
import dotenv from 'dotenv';

dotenv.config();

const sequelize = new Sequelize(process.env.DB_CONNECTION_STRING, {
dialect: 'mysql',
dialectOptions: {
    ssl: {
    require: true,
    rejectUnauthorized: false,
    }
}
});

// Define ProductRepository here if it's not in a separate file
class ProductRepository {
  // Define the methods and properties of ProductRepository
}

export { sequelize, ProductRepository };
