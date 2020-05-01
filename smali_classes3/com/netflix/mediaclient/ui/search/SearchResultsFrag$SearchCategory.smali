.class final enum Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SearchCategory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic b:[Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

.field public static final enum c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

.field public static final enum e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 103
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    const/4 v1, 0x0

    const-string v2, "SUGGESTIONS"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    const/4 v2, 0x1

    const-string v3, "VIDEOS"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    .line 102
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->b:[Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;
    .locals 1

    .line 102
    const-class v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;
    .locals 1

    .line 102
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->b:[Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    return-object v0
.end method
