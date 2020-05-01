.class synthetic Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 529
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->values()[Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->a:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->a:[I

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->e:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->a:[I

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->c:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$SearchCategory;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 277
    :catch_1
    invoke-static {}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->values()[Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->d:[I

    :try_start_2
    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$2;->d:[I

    sget-object v2, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->e:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
