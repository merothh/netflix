.class public final enum Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/details/DetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

.field public static final enum b:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

.field public static final enum c:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

.field public static final enum d:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

.field public static final enum e:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

.field private static final synthetic j:[Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 75
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    const/4 v1, 0x0

    const-string v2, "AddToMyList"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->d:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    const/4 v2, 0x1

    const-string v3, "RemoveFromMyList"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->a:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    const/4 v3, 0x2

    const-string v4, "Download"

    invoke-direct {v0, v4, v3}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->e:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 78
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    const/4 v4, 0x3

    const-string v5, "Like"

    invoke-direct {v0, v5, v4}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->b:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 79
    new-instance v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    const/4 v5, 0x4

    const-string v6, "Dislike"

    invoke-direct {v0, v6, v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    .line 74
    sget-object v6, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->d:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->a:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->e:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->b:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->c:Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->j:[Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .line 74
    const-class v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;
    .locals 1

    .line 74
    sget-object v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->j:[Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/details/DetailsActivity$Action;

    return-object v0
.end method
