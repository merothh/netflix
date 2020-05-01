.class public final synthetic Lo/YW;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic c:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->values()[Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lo/YW;->c:[I

    sget-object v0, Lo/YW;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->a:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lo/YW;->c:[I

    sget-object v1, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->b:Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/profiles/ProfilesAgeSection$AgeSetting;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
