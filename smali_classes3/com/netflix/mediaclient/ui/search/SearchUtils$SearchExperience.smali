.class public final enum Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netflix/mediaclient/ui/search/SearchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchExperience"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

.field private static final synthetic c:[Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

.field public static final enum e:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    const/4 v1, 0x0

    const-string v2, "PHONE"

    invoke-direct {v0, v2, v1}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->b:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    new-instance v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    const/4 v2, 0x1

    const-string v3, "TABLET"

    invoke-direct {v0, v3, v2}, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->e:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    .line 62
    sget-object v3, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->b:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->e:Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->c:[Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
    .locals 1

    .line 62
    const-class v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    return-object p0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;
    .locals 1

    .line 62
    sget-object v0, Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->c:[Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/search/SearchUtils$SearchExperience;

    return-object v0
.end method
