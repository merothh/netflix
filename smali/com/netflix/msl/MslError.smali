.class public Lcom/netflix/msl/MslError;
.super Ljava/lang/Object;
.source "MslError.java"


# static fields
.field private static final BASE:I = 0x186a0

.field public static final CIPHERTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

.field public static final CIPHERTEXT_ENVELOPE_ENCODE_ERROR:Lcom/netflix/msl/MslError;

.field public static final CIPHERTEXT_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

.field public static final CIPHERTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

.field public static final COMPRESSION_ERROR:Lcom/netflix/msl/MslError;

.field public static final DECRYPT_ERROR:Lcom/netflix/msl/MslError;

.field public static final DECRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

.field public static final DERIVEKEY_ERROR:Lcom/netflix/msl/MslError;

.field public static final DIGEST_ERROR:Lcom/netflix/msl/MslError;

.field public static final EMAILPASSWORD_BLANK:Lcom/netflix/msl/MslError;

.field public static final EMAILPASSWORD_INCORRECT:Lcom/netflix/msl/MslError;

.field public static final ENCRYPT_ERROR:Lcom/netflix/msl/MslError;

.field public static final ENCRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

.field public static final ENTITYAUTH_CIPHERTEXT_INVALID:Lcom/netflix/msl/MslError;

.field public static final ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

.field public static final ENTITYAUTH_MASTERTOKEN_INVALID:Lcom/netflix/msl/MslError;

.field public static final ENTITYAUTH_MASTERTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

.field public static final ENTITYAUTH_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

.field public static final ENTITYAUTH_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

.field public static final ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

.field public static final ENTITY_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

.field public static final ENTITY_REVOKED:Lcom/netflix/msl/MslError;

.field public static final ENVELOPE_HASH_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final ENVELOPE_KEY_ID_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final GENERATEKEY_ERROR:Lcom/netflix/msl/MslError;

.field public static final HANDSHAKE_DATA_MISSING:Lcom/netflix/msl/MslError;

.field public static final HEADER_DATA_INVALID:Lcom/netflix/msl/MslError;

.field public static final HEADER_DATA_MISSING:Lcom/netflix/msl/MslError;

.field public static final HEADER_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

.field public static final HMAC_ERROR:Lcom/netflix/msl/MslError;

.field public static final INCOMPLETE_NONREPLAYABLE_MESSAGE:Lcom/netflix/msl/MslError;

.field public static final INCORRECT_ENTITYAUTH_DATA:Lcom/netflix/msl/MslError;

.field public static final INSUFFICIENT_CIPHERTEXT:Lcom/netflix/msl/MslError;

.field public static final INTERNAL_CODE_NEGATIVE:Lcom/netflix/msl/MslError;

.field public static final INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

.field public static final INVALID_ALGORITHM_PARAMS:Lcom/netflix/msl/MslError;

.field public static final INVALID_CIPHERTEXT:Lcom/netflix/msl/MslError;

.field public static final INVALID_ENCRYPTION_KEY:Lcom/netflix/msl/MslError;

.field public static final INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

.field public static final INVALID_IV:Lcom/netflix/msl/MslError;

.field public static final INVALID_JWK:Lcom/netflix/msl/MslError;

.field public static final INVALID_JWK_KEYDATA:Lcom/netflix/msl/MslError;

.field public static final INVALID_PRIVATE_KEY:Lcom/netflix/msl/MslError;

.field public static final INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

.field public static final INVALID_SIGNATURE:Lcom/netflix/msl/MslError;

.field public static final INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

.field public static final INVALID_WRAPPING_KEY:Lcom/netflix/msl/MslError;

.field public static final INVALID_WRAP_CIPHERTEXT:Lcom/netflix/msl/MslError;

.field public static final JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

.field public static final JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

.field public static final JWE_ALGORITHM_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final JWE_ENCODE_ERROR:Lcom/netflix/msl/MslError;

.field public static final JWE_PARSE_ERROR:Lcom/netflix/msl/MslError;

.field public static final KEYX_DERIVATION_KEY_MISSING:Lcom/netflix/msl/MslError;

.field public static final KEYX_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

.field public static final KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

.field public static final KEYX_INCORRECT_MECHANISM:Lcom/netflix/msl/MslError;

.field public static final KEYX_INVALID_ENCRYPTION_KEY:Lcom/netflix/msl/MslError;

.field public static final KEYX_INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

.field public static final KEYX_INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

.field public static final KEYX_INVALID_WRAPDATA:Lcom/netflix/msl/MslError;

.field public static final KEYX_INVALID_WRAPPING_KEY:Lcom/netflix/msl/MslError;

.field public static final KEYX_MASTER_TOKEN_MISSING:Lcom/netflix/msl/MslError;

.field public static final KEYX_PRIVATE_KEY_MISSING:Lcom/netflix/msl/MslError;

.field public static final KEYX_PUBLIC_KEY_MISSING:Lcom/netflix/msl/MslError;

.field public static final KEYX_REQUEST_NOT_FOUND:Lcom/netflix/msl/MslError;

.field public static final KEYX_RESPONSE_REQUEST_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final KEYX_WRAPPING_KEY_ID_MISSING:Lcom/netflix/msl/MslError;

.field public static final KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

.field public static final KEY_EXPORT_ERROR:Lcom/netflix/msl/MslError;

.field public static final KEY_IMPORT_ERROR:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_EXPIRES_BEFORE_RENEWAL:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_IDENTITY_REVOKED:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_KEY_CREATION_ERROR:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_SEQUENCE_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_SEQUENCE_NUMBER_OUT_OF_SYNC:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_SESSIONDATA_INVALID:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_SESSIONDATA_MISSING:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_SESSIONDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_TOKENDATA_INVALID:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_TOKENDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

.field public static final MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_DATA_MISSING:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_ENTITYDATABASED_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_EXPIRED:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_FORMAT_ERROR:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_MASTERTOKENBASED_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_PEER_SERVICETOKEN_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_RECIPIENT_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_REPLAYED:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_REPLAYED_UNRECOVERABLE:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_SERVICETOKEN_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final MESSAGE_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

.field public static final MSL_COMMS_FAILURE:Lcom/netflix/msl/MslError;

.field public static final NONE:Lcom/netflix/msl/MslError;

.field public static final NONREPLAYABLE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

.field public static final NONREPLAYABLE_MESSAGE_REQUIRES_MASTERTOKEN:Lcom/netflix/msl/MslError;

.field public static final PAYLOAD_DATA_CORRUPT:Lcom/netflix/msl/MslError;

.field public static final PAYLOAD_DATA_MISSING:Lcom/netflix/msl/MslError;

.field public static final PAYLOAD_INVALID:Lcom/netflix/msl/MslError;

.field public static final PAYLOAD_MESSAGE_ID_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final PAYLOAD_MESSAGE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

.field public static final PAYLOAD_SEQUENCE_NUMBER_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final PAYLOAD_SEQUENCE_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

.field public static final PAYLOAD_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

.field public static final PAYLOAD_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

.field public static final PLAINTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

.field public static final PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

.field public static final REQUEST_REQUIRES_USERAUTHDATA:Lcom/netflix/msl/MslError;

.field public static final RESERVED_2012:Lcom/netflix/msl/MslError;

.field public static final RESPONSE_REQUIRES_ENCRYPTION:Lcom/netflix/msl/MslError;

.field public static final RESPONSE_REQUIRES_INTEGRITY_PROTECTION:Lcom/netflix/msl/MslError;

.field public static final RESPONSE_REQUIRES_MASTERTOKEN:Lcom/netflix/msl/MslError;

.field public static final RESPONSE_REQUIRES_USERIDTOKEN:Lcom/netflix/msl/MslError;

.field public static final RSA_PRIVATEKEY_NOT_FOUND:Lcom/netflix/msl/MslError;

.field public static final RSA_PUBLICKEY_NOT_FOUND:Lcom/netflix/msl/MslError;

.field public static final SERVICETOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final SERVICETOKEN_MASTERTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

.field public static final SERVICETOKEN_MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

.field public static final SERVICETOKEN_SERVICEDATA_INVALID:Lcom/netflix/msl/MslError;

.field public static final SERVICETOKEN_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

.field public static final SERVICETOKEN_TOKENDATA_INVALID:Lcom/netflix/msl/MslError;

.field public static final SERVICETOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

.field public static final SERVICETOKEN_USERIDTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final SERVICETOKEN_USERIDTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

.field public static final SERVICETOKEN_USERIDTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

.field public static final SESSION_KEY_CREATION_FAILURE:Lcom/netflix/msl/MslError;

.field public static final SIGNATURE_ENVELOPE_ENCODE_ERROR:Lcom/netflix/msl/MslError;

.field public static final SIGNATURE_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

.field public static final SIGNATURE_ERROR:Lcom/netflix/msl/MslError;

.field public static final SIGN_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

.field public static final UNCOMPRESSION_ERROR:Lcom/netflix/msl/MslError;

.field public static final UNEXPECTED_MESSAGE_SENDER:Lcom/netflix/msl/MslError;

.field public static final UNEXPECTED_RESPONSE_MESSAGE_ID:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_ALGORITHM:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_CIPHERSPEC:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_CIPHERTEXT_ENVELOPE:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_COMPRESSION:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_ENTITYAUTH_SCHEME:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_JWK_ALGORITHM:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_JWK_KEYOP:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_JWK_TYPE:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_JWK_USAGE:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_KEYX_KEY_ID:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_KEYX_SCHEME:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_USERAUTH_MECHANISM:Lcom/netflix/msl/MslError;

.field public static final UNIDENTIFIED_USERAUTH_SCHEME:Lcom/netflix/msl/MslError;

.field public static final UNKNOWN_KEYX_PARAMETERS_ID:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_CIPHERTEXT_ENVELOPE:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_COMPRESSION:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_ENTITYAUTH_DATA:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_JWE_ALGORITHM:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_JWE_SERIALIZATION:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_JWK_ALGORITHM:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_KEY:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_KEYX_KEY_ID:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_KEYX_SCHEME:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_USERAUTH_DATA:Lcom/netflix/msl/MslError;

.field public static final UNSUPPORTED_USERAUTH_MECHANISM:Lcom/netflix/msl/MslError;

.field public static final UNWRAP_ERROR:Lcom/netflix/msl/MslError;

.field public static final UNWRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

.field public static final USERAUTH_ENTITYUSER_INCORRECT_DATA:Lcom/netflix/msl/MslError;

.field public static final USERAUTH_ENTITY_INCORRECT_DATA:Lcom/netflix/msl/MslError;

.field public static final USERAUTH_ENTITY_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final USERAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

.field public static final USERAUTH_MASTERTOKEN_INVALID:Lcom/netflix/msl/MslError;

.field public static final USERAUTH_MASTERTOKEN_MISSING:Lcom/netflix/msl/MslError;

.field public static final USERAUTH_MASTERTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

.field public static final USERAUTH_USERIDTOKEN_INVALID:Lcom/netflix/msl/MslError;

.field public static final USERAUTH_USERIDTOKEN_MISSING:Lcom/netflix/msl/MslError;

.field public static final USERAUTH_USERIDTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_EXPIRES_BEFORE_RENEWAL:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_IDENTITY_INVALID:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_IDENTITY_NOT_ASSOCIATED_WITH_ENTITY:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_MASTERTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_MASTERTOKEN_NULL:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_REVOKED:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_TOKENDATA_INVALID:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_TOKENDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_USERAUTH_DATA_MISMATCH:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_USERDATA_INVALID:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_USERDATA_MISSING:Lcom/netflix/msl/MslError;

.field public static final USERIDTOKEN_USERDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

.field public static final USER_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

.field public static final VERIFY_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

.field public static final WRAP_ERROR:Lcom/netflix/msl/MslError;

.field public static final WRAP_KEY_CREATION_FAILURE:Lcom/netflix/msl/MslError;

.field public static final WRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

.field public static final X509CERT_ENCODE_ERROR:Lcom/netflix/msl/MslError;

.field public static final X509CERT_EXPIRED:Lcom/netflix/msl/MslError;

.field public static final X509CERT_INVALID:Lcom/netflix/msl/MslError;

.field public static final X509CERT_NOT_YET_VALID:Lcom/netflix/msl/MslError;

.field public static final X509CERT_PARSE_ERROR:Lcom/netflix/msl/MslError;

.field public static final X509CERT_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

.field private static final internalCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final internalCode:I

.field private final msg:Ljava/lang/String;

.field private final responseCode:Lcom/netflix/msl/MslConstants$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/netflix/msl/MslError;->internalCodes:Ljava/util/Set;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/4 v1, 0x0

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error parsing JSON."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->JSON_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error encoding JSON."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->JSON_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/4 v1, 0x2

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Computed hash does not match envelope hash."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENVELOPE_HASH_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/4 v1, 0x3

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid public key provided."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/4 v1, 0x4

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid private key provided."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_PRIVATE_KEY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Plaintext is not a multiple of the block size."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->PLAINTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Plaintext contains incorrect padding."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->PLAINTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/4 v1, 0x7

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Ciphertext is not a multiple of the block size."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->CIPHERTEXT_ILLEGAL_BLOCK_SIZE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x8

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Ciphertext contains incorrect padding."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->CIPHERTEXT_BAD_PADDING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x9

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Encryption not supported."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENCRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xa

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Decryption not supported."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->DECRYPT_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xb

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Encryption envelope key ID does not match crypto context key ID."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENVELOPE_KEY_ID_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xc

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error parsing ciphertext envelope."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->CIPHERTEXT_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xd

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error encoding ciphertext envelope."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->CIPHERTEXT_ENVELOPE_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xe

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Sign not supported."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SIGN_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xf

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Verify not suppoprted."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->VERIFY_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x10

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Signature not initialized or unable to process data/signature."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SIGNATURE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x11

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error computing HMAC."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->HMAC_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x12

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error encrypting plaintext."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENCRYPT_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x13

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error decrypting ciphertext."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->DECRYPT_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x14

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Insufficient ciphertext for decryption."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INSUFFICIENT_CIPHERTEXT:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x15

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error when creating session keys."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SESSION_KEY_CREATION_FAILURE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x18

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid symmetric key."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_SYMMETRIC_KEY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x19

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid encryption key."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_ENCRYPTION_KEY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1a

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid HMAC key."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Wrap not supported."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->WRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1c

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unwrap not supported."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNWRAP_NOT_SUPPORTED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1d

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unidentified JSON web key type."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_TYPE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1e

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unidentified JSON web key usage."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_USAGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1f

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unidentified JSON web key algorithm."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_ALGORITHM:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x20

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error wrapping plaintext."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->WRAP_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x21

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error unwrapping ciphertext."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNWRAP_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x22

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid JSON web key."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_JWK:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x23

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid JSON web key keydata."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_JWK_KEYDATA:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x24

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported JSON web key algorithm."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_JWK_ALGORITHM:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x25

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error when creating wrapping key."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->WRAP_KEY_CREATION_FAILURE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x26

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid wrap ciphertext."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_WRAP_CIPHERTEXT:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x27

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported JSON web encryption algorithm."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_JWE_ALGORITHM:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x28

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error encoding JSON web encryption header."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->JWE_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x29

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error parsing JSON web encryption header."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->JWE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x2a

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid algorithm parameters."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_ALGORITHM_PARAMS:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x2b

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "JSON web encryption header algorithms mismatch."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->JWE_ALGORITHM_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x2c

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error importing key."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEY_IMPORT_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x2d

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error exporting key."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEY_EXPORT_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x2e

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error in digest."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->DIGEST_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x2f

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported key type or algorithm."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x30

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported JSON web encryption serialization."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_JWE_SERIALIZATION:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x33

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid wrapping key."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_WRAPPING_KEY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x34

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unidentified ciphertext envelope version."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_CIPHERTEXT_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x35

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unidentified signature envelope version."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x36

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported ciphertext envelope version."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_CIPHERTEXT_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x37

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported signature envelope version."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_SIGNATURE_ENVELOPE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x38

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unidentified cipher specification."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_CIPHERSPEC:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x39

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unidentified algorithm."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_ALGORITHM:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3a

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error parsing signature envelope."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SIGNATURE_ENVELOPE_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3b

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error encoding signature envelope."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SIGNATURE_ENVELOPE_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3c

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid signature."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_SIGNATURE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3d

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error deriving key."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->DERIVEKEY_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3e

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unidentified JSON web key key operation."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_JWK_KEYOP:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3f

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error generating key."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->GENERATEKEY_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x40

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid initialization vector."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_IV:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x41

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid ciphertext."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INVALID_CIPHERTEXT:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3e8

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Master token is not trusted."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_UNTRUSTED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3e9

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unable to construct symmetric keys from master token."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_KEY_CREATION_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3ea

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Master token expiration timestamp is before the renewal window opens."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_EXPIRES_BEFORE_RENEWAL:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3eb

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No master token session data found."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_SESSIONDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3ec

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Master token sequence number is out of range."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_SEQUENCE_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3ed

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Master token serial number is out of range."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3ee

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid master token data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_TOKENDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3ef

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid master token signature."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3f0

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid master token session data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_SESSIONDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3f1

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Master token sequence number does not have the expected value."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_SEQUENCE_NUMBER_OUT_OF_SYNC:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3f2

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No master token data found."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3f3

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error parsing master token data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_TOKENDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3f4

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error parsing master token session data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_SESSIONDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3f5

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Master token entity identity is revoked."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_IDENTITY_REVOKED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x3f6

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Master token is rejected by the application."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MASTERTOKEN_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7d0

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User ID token master token serial number does not match master token serial number."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7d1

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User ID token is not decrypted or verified."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7d2

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User ID token requires a master token."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_NULL:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7d3

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User ID token expiration timestamp is before the renewal window opens."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_EXPIRES_BEFORE_RENEWAL:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7d4

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No user ID token user data found."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_USERDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7d5

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User ID token is bound to an unknown master token."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7d6

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User ID token master token serial number is out of range."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7d7

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User ID token serial number is out of range."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7d8

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid user ID token data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_TOKENDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7d9

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid user ID token signature."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7da

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid user ID token user data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_USERDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7db

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid user ID token user identity."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7dc

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "The entity is not associated with the user."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->RESERVED_2012:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7df

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "The user ID token and user authentication data user identities do not match."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_USERAUTH_DATA_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7e0

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No user ID token data found."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7e1

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error parsing user ID token data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_TOKENDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7e2

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error parsing user ID token user data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_USERDATA_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7e3

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User ID token is revoked."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_REVOKED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x7e4

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User ID token is rejected by the application."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xbb8

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Service token master token serial number does not match master token serial number."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SERVICETOKEN_MASTERTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xbb9

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Service token user ID token serial number does not match user ID token serial number."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SERVICETOKEN_USERIDTOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xbba

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Service token data invalid."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SERVICETOKEN_SERVICEDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xbbb

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Service token is bound to an unknown master token."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SERVICETOKEN_MASTERTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xbbc

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Service token is bound to an unknown user ID token."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SERVICETOKEN_USERIDTOKEN_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xbbd

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Service token master token serial number is out of range."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SERVICETOKEN_MASTERTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xbbe

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Service token user ID token serial number is out of range."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SERVICETOKEN_USERIDTOKEN_SERIAL_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xbbf

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid service token data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SERVICETOKEN_TOKENDATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xbc0

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid service token signature."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SERVICETOKEN_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xbc1

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No service token data found."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->SERVICETOKEN_TOKENDATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfa0

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unable to identify entity authentication scheme."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_ENTITYAUTH_SCHEME:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfa1

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No factory registered for entity authentication scheme."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENTITYAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfa2

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error parsing X.509 certificate data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->X509CERT_PARSE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfa3

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error encoding X.509 certificate data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->X509CERT_ENCODE_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfa4

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "X.509 certificate verification failed."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->X509CERT_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfa5

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Entity not recognized."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfa6

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Entity used incorrect entity authentication data type."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INCORRECT_ENTITYAUTH_DATA:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfa7

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "RSA public key not found."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->RSA_PUBLICKEY_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfb7

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported entity authentication data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_ENTITYAUTH_DATA:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfb9

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Entity is revoked."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENTITY_REVOKED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfba

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Entity is rejected by the application."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENTITY_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfbc

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "X.509 certificate is expired."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->X509CERT_EXPIRED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfbd

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "X.509 certificate is not yet valid."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->X509CERT_NOT_YET_VALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfbe

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "X.509 certificate is invalid."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->X509CERT_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfbf

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "RSA private key not found."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->RSA_PRIVATEKEY_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfc0

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Entity authentication data master token is not decrypted or verified."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENTITYAUTH_MASTERTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfc1

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid entity authentication data siganture."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENTITYAUTH_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfc2

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid entity authentication data ciphertext."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENTITYAUTH_CIPHERTEXT_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfc3

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Entity authentication data signature verification failed."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENTITYAUTH_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0xfc4

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid entity authentication data master token."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->ENTITYAUTH_MASTERTOKEN_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x138b

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unable to identify user authentication scheme."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_USERAUTH_SCHEME:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x138c

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No factory registered for user authentication scheme."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERAUTH_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x138d

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Email or password is blank."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->EMAILPASSWORD_BLANK:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x138f

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Email or password is incorrect."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->EMAILPASSWORD_INCORRECT:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1390

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported user authentication data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_USERAUTH_DATA:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1393

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User authentication data user ID token is invalid."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERAUTH_USERIDTOKEN_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1395

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unable to identify user authentication mechanism."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_USERAUTH_MECHANISM:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1396

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported user authentication mechanism."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_USERAUTH_MECHANISM:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1398

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User authentication required master token is missing."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERAUTH_MASTERTOKEN_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x139d

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User authentication data user ID token is not decrypted or verified."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERAUTH_USERIDTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x13a0

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User authentication data master token is invalid."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERAUTH_MASTERTOKEN_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x13a1

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User authentication data master token is not decrypted or verified."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERAUTH_MASTERTOKEN_NOT_DECRYPTED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x13a6

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User authentication required user ID token is missing."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERAUTH_USERIDTOKEN_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x13a8

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User authentication data does not match entity identity."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERAUTH_ENTITY_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x13a9

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Entity used incorrect user authentication data type."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERAUTH_ENTITY_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x13ad

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User is rejected by the application."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USER_REJECTED_BY_APP:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x13b0

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "The entity is not associated with the user."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERIDTOKEN_IDENTITY_NOT_ASSOCIATED_WITH_ENTITY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x13b1

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USERDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Entity and user combination used incorrect user authentication data type."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->USERAUTH_ENTITYUSER_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1770

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported compression algorithm."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_COMPRESSION:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1771

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error compressing data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->COMPRESSION_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1772

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error uncompressing data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNCOMPRESSION_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1773

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message header entity authentication data or master token not found."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_ENTITY_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1774

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Payload chunk message ID does not match header message ID ."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->PAYLOAD_MESSAGE_ID_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1775

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Payload chunk sequence number does not match expected sequence number."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->PAYLOAD_SEQUENCE_NUMBER_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1776

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Payload chunk payload signature verification failed."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->PAYLOAD_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1777

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No message data found."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_DATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1778

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Malformed message data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_FORMAT_ERROR:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1779

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message header/error data signature verification failed."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x177a

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No header data found."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->HEADER_DATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x177b

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No payload data found in non-EOM payload chunk."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->PAYLOAD_DATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x177c

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Corrupt payload data found in non-EOM payload chunk."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->PAYLOAD_DATA_CORRUPT:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x177d

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unidentified compression algorithm."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_COMPRESSION:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x177e

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->EXPIRED:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message expired and not renewable. Rejected."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_EXPIRED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x177f

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message ID is is out of range."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1780

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error header internal code is negative."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INTERNAL_CODE_NEGATIVE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1781

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unexpected response message ID. Possible replay."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNEXPECTED_RESPONSE_MESSAGE_ID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1782

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->KEYX_REQUIRED:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message response requires encryption."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_ENCRYPTION:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1783

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Payload chunk sequence number is out of range."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->PAYLOAD_SEQUENCE_NUMBER_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1784

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Payload chunk message ID is out of range."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->PAYLOAD_MESSAGE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1785

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->REPLAYED:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Non-replayable message replayed."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_REPLAYED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1786

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Non-replayable message sent without a master token."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INCOMPLETE_NONREPLAYABLE_MESSAGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1787

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid Header signature."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->HEADER_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1788

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid header data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->HEADER_DATA_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1789

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid payload."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->PAYLOAD_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x178a

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Invalid payload signature."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->PAYLOAD_SIGNATURE_INVALID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x178b

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->KEYX_REQUIRED:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message response requires a master token."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_MASTERTOKEN:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x178c

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->USER_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message response requires a user ID token."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_USERIDTOKEN:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x178d

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "User-associated message requires user authentication data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->REQUEST_REQUIRES_USERAUTHDATA:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x178e

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message sender is equal to the local entity or not the master token entity."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNEXPECTED_MESSAGE_SENDER:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x178f

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Non-replayable message requires a master token."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->NONREPLAYABLE_MESSAGE_REQUIRES_MASTERTOKEN:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1790

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Non-replayable message non-replayable ID is out of range."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->NONREPLAYABLE_ID_OUT_OF_RANGE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1791

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Service token master token or user ID token serial number does not match the message token serial numbers."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_SERVICETOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1792

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Peer service token master token or user ID token serial number does not match the message peer token serial numbers."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_PEER_SERVICETOKEN_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1793

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->KEYX_REQUIRED:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message response requires integrity protection."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->RESPONSE_REQUIRES_INTEGRITY_PROTECTION:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1794

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Handshake message is not renewable or does not contain key request data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->HANDSHAKE_DATA_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1795

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message recipient does not match local identity."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_RECIPIENT_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1796

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITYDATA_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message header entity-based signature verification failed."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_ENTITYDATABASED_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1797

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Message header master token-based signature verification failed."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_MASTERTOKENBASED_VERIFICATION_FAILED:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1798

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->ENTITY_REAUTH:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Non-replayable message replayed with a sequence number that is too far out of sync to recover."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MESSAGE_REPLAYED_UNRECOVERABLE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b58

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unable to identify key exchange scheme."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_SCHEME:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b59

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No factory registered for key exchange scheme."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_FACTORY_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b5a

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "No key request found matching header key response data."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_REQUEST_NOT_FOUND:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b5b

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unable to identify key exchange key ID."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_KEY_ID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b5c

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported key exchange key ID."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_KEY_ID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b5d

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unable to identify key exchange mechanism."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNIDENTIFIED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b5e

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported key exchange mechanism."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_MECHANISM:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b5f

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange response does not match request."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_RESPONSE_REQUEST_MISMATCH:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b60

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange private key missing."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_PRIVATE_KEY_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b61

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange parameters ID unknown or invalid."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNKNOWN_KEYX_PARAMETERS_ID:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b62

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Master token required for key exchange is missing."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_MASTER_TOKEN_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b63

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange public key is invalid."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_INVALID_PUBLIC_KEY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b64

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange public key missing."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_PUBLIC_KEY_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b65

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange wrapping key missing."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b66

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange wrapping key ID missing."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_WRAPPING_KEY_ID_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b67

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange wrapping key is invalid."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_INVALID_WRAPPING_KEY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b68

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Entity used incorrect key exchange data type."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_DATA:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b69

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Entity used incorrect key exchange mecahnism."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_INCORRECT_MECHANISM:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b6a

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange derivation key missing."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_DERIVATION_KEY_MISSING:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b6b

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange encryption key is invalid."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_INVALID_ENCRYPTION_KEY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b6c

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange HMAC key is invalid."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_INVALID_HMAC_KEY:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b6d

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Key exchange wrap data is invalid."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->KEYX_INVALID_WRAPDATA:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x1b6e

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Unsupported key exchange scheme."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->UNSUPPORTED_KEYX_SCHEME:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x2328

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->TRANSIENT_FAILURE:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Internal exception."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->INTERNAL_EXCEPTION:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x2329

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Error communicating with MSL entity."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->MSL_COMMS_FAILURE:Lcom/netflix/msl/MslError;

    new-instance v0, Lcom/netflix/msl/MslError;

    const/16 v1, 0x270f

    sget-object v2, Lcom/netflix/msl/MslConstants$ResponseCode;->FAIL:Lcom/netflix/msl/MslConstants$ResponseCode;

    const-string/jumbo v3, "Special unit test error."

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/msl/MslError;-><init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V

    sput-object v0, Lcom/netflix/msl/MslError;->NONE:Lcom/netflix/msl/MslError;

    return-void
.end method

.method protected constructor <init>(ILcom/netflix/msl/MslConstants$ResponseCode;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/netflix/msl/MslError;->internalCodes:Ljava/util/Set;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/netflix/msl/MslError;->internalCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/msl/MslInternalException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Duplicate MSL error definition for error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/netflix/msl/MslInternalException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/netflix/msl/MslError;->internalCodes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const v0, 0x186a0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/netflix/msl/MslError;->internalCode:I

    iput-object p2, p0, Lcom/netflix/msl/MslError;->responseCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    iput-object p3, p0, Lcom/netflix/msl/MslError;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/netflix/msl/MslError;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/netflix/msl/MslError;

    iget v2, p0, Lcom/netflix/msl/MslError;->internalCode:I

    iget v3, p1, Lcom/netflix/msl/MslError;->internalCode:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/netflix/msl/MslError;->responseCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    iget-object v3, p1, Lcom/netflix/msl/MslError;->responseCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getInternalCode()I
    .locals 1

    iget v0, p0, Lcom/netflix/msl/MslError;->internalCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/MslError;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()Lcom/netflix/msl/MslConstants$ResponseCode;
    .locals 1

    iget-object v0, p0, Lcom/netflix/msl/MslError;->responseCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/netflix/msl/MslError;->internalCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/netflix/msl/MslError;->responseCode:Lcom/netflix/msl/MslConstants$ResponseCode;

    invoke-virtual {v1}, Lcom/netflix/msl/MslConstants$ResponseCode;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
