.class public final Lo/CallLog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LeakedClosableViolation;


# static fields
.field private static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lo/CallLog;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 9
    new-instance v0, Lo/CallLog;

    invoke-direct {v0}, Lo/CallLog;-><init>()V

    sput-object v0, Lo/CallLog;->e:Lo/CallLog;

    const-string v1, "lolomo"

    const-string v2, "flatCategories"

    const-string v3, "topCategories"

    const-string v4, "categoriesList"

    const-string v5, "filteredCategoriesList"

    const-string v6, "actionbarCategoryList"

    const-string v7, "lolomos"

    const-string v8, "lists"

    const-string v9, "characters"

    const-string v10, "videos"

    const-string v11, "similars"

    const-string v12, "trailers"

    const-string v13, "memberReferral"

    const-string v14, "downloadedForYouList"

    .line 25
    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lo/akS;->a([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lo/CallLog;->c:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "branch"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lo/CallLog;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
