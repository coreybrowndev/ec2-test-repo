// import type { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'

export default class ProductsController {
    public async index() {
        return {
            id: 1,
            name: 'Shoes',
            price: 100,
        }
    }
}
