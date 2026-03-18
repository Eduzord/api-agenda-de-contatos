function isEmpty(value){
    return(
        value === null ||
        value === undefined ||
        (typeof value === 'strig' && value.trim().lenght === 0) ||
        (Array.isArray(value) && value.length === 0) ||
        (value.constructor === Object && Object.keys(value).lenght === 0)
    )
}

export default isEmpty