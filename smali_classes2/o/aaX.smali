.class public final synthetic Lo/aaX;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic b:[I

.field public static final synthetic d:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->values()[Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/aaX;->d:[I

    sget-object v0, Lo/aaX;->d:[I

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->e:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/aaX;->d:[I

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->c:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lo/aaX;->d:[I

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->d:Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/configuration/crypto/CryptoProvider;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->values()[Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/aaX;->b:[I

    sget-object v0, Lo/aaX;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->e:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lo/aaX;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->b:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lo/aaX;->b:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->d:Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/settings/PlaybackSpecificationFragment$VideoResolution;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
