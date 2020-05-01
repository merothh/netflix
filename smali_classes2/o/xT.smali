.class public final Lo/xT;
.super Ljava/lang/Object;
.source ""


# static fields
.field static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$1;-><init>()V

    sput-object v0, Lo/xT;->e:Ljava/util/Map;

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$2;-><init>()V

    sput-object v0, Lo/xT;->a:Ljava/util/Map;

    return-void
.end method

.method public static e(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I
    .locals 2

    if-eqz p1, :cond_2

    .line 40
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->preAppWidgetExperience:Ljava/lang/String;

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    iget-object p1, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->preAppWidgetExperience:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5c13d641

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 47
    :goto_0
    sget-object p1, Lo/xT;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 41
    :cond_2
    :goto_1
    sget-object p1, Lo/xT;->a:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method
