.class public final enum Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

.field public static final enum c:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

.field private static final synthetic e:[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->a:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    const/4 v2, 0x1

    const-string v3, "DownloadNotification"

    invoke-direct {v0, v3, v2, v2}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->c:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    .line 12
    sget-object v3, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->a:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->c:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->e:[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->d:I

    return-void
.end method

.method private a()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->d:I

    return v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;
    .locals 2

    .line 44
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->a:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    iget v0, v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->d:I

    const-string v1, "of_intent_group_type"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 45
    invoke-static {p0}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->e(I)Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Intent;Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;)V
    .locals 1

    .line 40
    invoke-direct {p1}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->a()I

    move-result p1

    const-string v0, "of_intent_group_type"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private static e(I)Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;
    .locals 5

    .line 31
    invoke-static {}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->values()[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 32
    invoke-direct {v3}, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->a()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->a:Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;
    .locals 1

    .line 12
    const-class v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;
    .locals 1

    .line 12
    sget-object v0, Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->e:[Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/offline/agent/IntentCommandGroupType;

    return-object v0
.end method
