.class public Lorg/chromium/base/BuildConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static COMPRESSED_LOCALES:[Ljava/lang/String; = null

.field public static DCHECK_IS_ON:Z = false

.field public static MIN_SDK_VERSION:I = 0x1

.field public static R_STRING_PRODUCT_VERSION:I

.field public static UNCOMPRESSED_LOCALES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 7
    sput-object v1, Lorg/chromium/base/BuildConfig;->COMPRESSED_LOCALES:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    .line 8
    sput-object v0, Lorg/chromium/base/BuildConfig;->UNCOMPRESSED_LOCALES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
