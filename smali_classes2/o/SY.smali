.class public final Lo/SY;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/SY$Application;,
        Lo/SY$TaskDescription;,
        Lo/SY$ActionBar;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Lo/aka;

.field private c:Ljava/lang/String;

.field private final d:Z

.field private e:Lo/SY$ActionBar;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/SY$Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "<a href=\'%s\'>help.netflix.com</a>"

    .line 18
    iput-object v0, p0, Lo/SY;->a:Ljava/lang/String;

    const-string v0, "https://help.netflix.com/support/%s"

    .line 19
    iput-object v0, p0, Lo/SY;->c:Ljava/lang/String;

    .line 20
    new-instance v0, Lo/SY$ActionBar;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo/SY$ActionBar;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lo/SY;->e:Lo/SY$ActionBar;

    .line 25
    sget-object v0, Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$defaultErrorData$2;->c:Lcom/netflix/mediaclient/ui/offline/errors/DownloadsErrorHelper$defaultErrorData$2;

    check-cast v0, Lo/alB;

    invoke-static {v0}, Lo/akd;->a(Lo/alB;)Lo/aka;

    move-result-object v0

    iput-object v0, p0, Lo/SY;->b:Lo/aka;

    const/16 v0, 0x19

    new-array v0, v0, [Lkotlin/Pair;

    .line 27
    new-instance v7, Lo/SY$Application;

    const v2, 0x10564

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    const-string v1, "DLST.N61"

    invoke-static {v1, v7}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 28
    new-instance v1, Lo/SY$Application;

    const v4, 0xfabc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    const-string v2, "DLST.N373"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 29
    new-instance v1, Lo/SY$Application;

    const v4, 0xf439

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    const-string v2, "DLST.N3"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 30
    new-instance v1, Lo/SY$Application;

    const v4, 0x1042a

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    const-string v2, "DLST.N103"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 31
    new-instance v1, Lo/SY$Application;

    const v4, 0x188f8

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    const-string v2, "DLST.N1009"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 32
    new-instance v1, Lo/SY$Application;

    const v4, 0x18835

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    const-string v2, "DLST.N1008"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 33
    new-instance v1, Lo/SY$Application;

    const v4, 0x10379

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    const-string v2, "DLS.2"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 34
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bc:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aM:I

    const v4, 0xf24a

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "DLS.103"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 35
    new-instance v1, Lo/SY$Application;

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->nM:I

    const/4 v4, 0x0

    const/4 v7, 0x3

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    const-string v2, "OF.NA.1"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 36
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->aY:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aP:I

    const v4, 0x18780

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "OF.NA.2"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 37
    new-instance v1, Lo/SY$Application;

    sget v5, Lcom/netflix/mediaclient/ui/R$AssistContent;->aZ:I

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->aQ:I

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    const-string v2, "OF.NA.3"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 38
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bb:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aN:I

    const v4, 0x1090a

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "OF.NA.4"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 39
    new-instance v1, Lo/SY$Application;

    sget v6, Lcom/netflix/mediaclient/ui/R$AssistContent;->mo:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    const-string v2, "OF.NA.5"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 40
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bb:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aN:I

    const v4, 0xfcfd

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "OF.NA.6"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 41
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bb:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aN:I

    const v4, 0xfd93

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "OF.NA.7"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 42
    invoke-direct {p0}, Lo/SY;->b()Lo/SY$Application;

    move-result-object v1

    const-string v2, "OF.NA.8"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 43
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bh:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aU:I

    const v4, 0xdb33

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "NQL.22006"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 44
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bh:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aU:I

    const v4, 0xdb34

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "NQL.22007"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 45
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->be:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aT:I

    const v4, 0xecdb

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "NQL.22005"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 46
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bd:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aV:I

    const v4, 0xfd9a

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "NQL.23000"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 47
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->aZ:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aQ:I

    const v4, 0x186e4

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "NQL.2303"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 48
    new-instance v1, Lo/SY$Application;

    const v4, 0xf21f

    const/4 v6, 0x0

    const/4 v7, 0x6

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lo/SY$Application;-><init>(IIIILo/amc;)V

    const-string v2, "NQM.508"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 49
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->aW:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aJ:I

    const v4, 0x1880b

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "NQM.407"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 50
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bc:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aM:I

    const v4, 0x188db

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "NQM.434"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 51
    new-instance v1, Lo/SY$Application;

    sget v2, Lcom/netflix/mediaclient/ui/R$AssistContent;->bf:I

    sget v3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aR:I

    const v4, 0xfbb5

    invoke-direct {v1, v4, v2, v3}, Lo/SY$Application;-><init>(III)V

    const-string v2, "NQM.105"

    invoke-static {v2, v1}, Lo/akk;->b(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 26
    invoke-static {v0}, Lo/akI;->c([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/SY;->h:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic b(Lo/SY;)Lo/SY$ActionBar;
    .locals 0

    .line 17
    iget-object p0, p0, Lo/SY;->e:Lo/SY$ActionBar;

    return-object p0
.end method

.method private final b()Lo/SY$Application;
    .locals 1

    iget-object v0, p0, Lo/SY;->b:Lo/aka;

    invoke-interface {v0}, Lo/aka;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/SY$Application;

    return-object v0
.end method

.method public static final synthetic d(Lo/SY;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lo/SY;->d:Z

    return p0
.end method

.method public static final synthetic e(Lo/SY;Lo/SY$ActionBar;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lo/SY;->e:Lo/SY$ActionBar;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lo/SY;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/SY$TaskDescription;
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, p2}, Lo/SY;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/SY;->h:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lo/SY$Application;

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.netflix.mediaclient.ui.offline.errors.DownloadsErrorHelper.ErrorData"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-direct {p0}, Lo/SY;->b()Lo/SY$Application;

    move-result-object v0

    .line 98
    :goto_0
    iget-boolean v1, p0, Lo/SY;->d:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 99
    sget-object v1, Lo/amj;->c:Lo/amj;

    iget-object v1, p0, Lo/SY;->c:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lo/SY$Application;->c()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 100
    move-object v5, p3

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    .line 101
    invoke-static {v1, p3}, Lo/Ik;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p3, "AccountHandler.createLink(supportLink, token)"

    invoke-static {v1, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    :cond_3
    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->aS:I

    invoke-static {p3}, Lo/VideoView2;->e(I)Lo/VideoView2;

    move-result-object p3

    .line 106
    sget-object v5, Lo/amj;->c:Lo/amj;

    iget-object v5, p0, Lo/SY;->a:Ljava/lang/String;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v1, v6, v2

    array-length v1, v6

    invoke-static {v6, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "supportLink"

    invoke-virtual {p3, v4, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p3

    .line 109
    invoke-static {p2}, Lo/aeF;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "errorCode"

    .line 107
    invoke-virtual {p3, v1, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p2

    .line 111
    invoke-virtual {p2}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    .line 112
    invoke-virtual {v0}, Lo/SY$Application;->e()I

    move-result p3

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "context.getString(data.messageId, moreInfo)"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 115
    :cond_4
    invoke-virtual {v0}, Lo/SY$Application;->e()I

    move-result p3

    new-array v1, v3, [Ljava/lang/Object;

    .line 116
    invoke-static {p2}, Lo/aeF;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    .line 114
    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "context.getString(\n     \u2026Space(code)\n            )"

    invoke-static {p2, p3}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    :goto_2
    new-instance p3, Lo/SY$TaskDescription;

    invoke-virtual {v0}, Lo/SY$Application;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(data.titleId)"

    invoke-static {p1, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lo/aev;->g(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    const-string v0, "StringUtils.fromHtml(message)"

    invoke-static {p2, v0}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1, p2}, Lo/SY$TaskDescription;-><init>(Ljava/lang/String;Landroid/text/Spanned;)V

    return-object p3
.end method

.method public final e(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lo/SY$TaskDescription;",
            ">;"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lo/SY$Activity;

    invoke-direct {v0, p0, p1, p2}, Lo/SY$Activity;-><init>(Lo/SY;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    check-cast v0, Lio/reactivex/ObservableOnSubscribe;

    invoke-static {v0}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "Observable.create<Downlo\u2026)\n            }\n        }"

    invoke-static {p1, p2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
