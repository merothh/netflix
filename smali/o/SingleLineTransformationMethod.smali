.class public final Lo/SingleLineTransformationMethod;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final g:Z

.field private final h:Lo/InputBinding;

.field private final i:Lo/NumberKeyListener;

.field private final j:Z


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/NumberKeyListener;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SingleLineTransformationMethod;->h:Lo/InputBinding;

    iput-object p2, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    .line 11
    iget-object p1, p0, Lo/SingleLineTransformationMethod;->h:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->eP:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SingleLineTransformationMethod;->b:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lo/SingleLineTransformationMethod;->h:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->eM:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SingleLineTransformationMethod;->d:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lo/SingleLineTransformationMethod;->h:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->eJ:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {p2}, Lo/NumberKeyListener;->o()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MIN_AGE"

    invoke-virtual {p1, v0, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SingleLineTransformationMethod;->c:Ljava/lang/String;

    .line 19
    iget-object p1, p0, Lo/SingleLineTransformationMethod;->h:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->eQ:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    const-string p2, "PAYMENT_GATEWAY_URL"

    const-string v0, "https://netflix.com/krpaymentconsent"

    .line 20
    invoke-virtual {p1, p2, v0}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SingleLineTransformationMethod;->a:Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lo/SingleLineTransformationMethod;->h:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->eR:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/SingleLineTransformationMethod;->e:Ljava/lang/String;

    .line 25
    iget-object p1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {p1}, Lo/NumberKeyListener;->k()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {p1}, Lo/NumberKeyListener;->m()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lo/SingleLineTransformationMethod;->g:Z

    .line 30
    iget-object p1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {p1}, Lo/NumberKeyListener;->b()Lo/AutoGrowArray;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {p1}, Lo/NumberKeyListener;->a()Lo/AutoGrowArray;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {p1}, Lo/NumberKeyListener;->c()Lo/AutoGrowArray;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {p1}, Lo/NumberKeyListener;->e()Lo/AutoGrowArray;

    move-result-object p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p2, 0x1

    :cond_3
    iput-boolean p2, p0, Lo/SingleLineTransformationMethod;->j:Z

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lo/SingleLineTransformationMethod;->j:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 58
    iget-object v0, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {v0}, Lo/NumberKeyListener;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->ra:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->rg:I

    .line 59
    :goto_0
    iget-object v1, p0, Lo/SingleLineTransformationMethod;->h:Lo/InputBinding;

    invoke-virtual {v1, v0}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {v1}, Lo/NumberKeyListener;->g()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PRICE"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {v1}, Lo/NumberKeyListener;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "planBillingFrequency"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stringProvider.getFormat\u2026())\n            .format()"

    invoke-static {v0, v1}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lo/SingleLineTransformationMethod;->g:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lo/SingleLineTransformationMethod;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/MetaKeyKeyListener;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 35
    iget-object v1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {v1}, Lo/NumberKeyListener;->c()Lo/AutoGrowArray;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 36
    new-instance v1, Lo/MetaKeyKeyListener;

    sget-object v4, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;->e:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    iget-object v5, p0, Lo/SingleLineTransformationMethod;->b:Ljava/lang/String;

    const-string v2, "termsText"

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {v2}, Lo/NumberKeyListener;->j()Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lo/MetaKeyKeyListener;-><init>(Lo/AutoGrowArray;Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;Ljava/lang/String;Ljava/lang/Integer;ZILo/amc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    iget-object v1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {v1}, Lo/NumberKeyListener;->b()Lo/AutoGrowArray;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 40
    new-instance v1, Lo/MetaKeyKeyListener;

    sget-object v4, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;->b:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    iget-object v5, p0, Lo/SingleLineTransformationMethod;->d:Ljava/lang/String;

    const-string v2, "abroadText"

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {v2}, Lo/NumberKeyListener;->h()Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lo/MetaKeyKeyListener;-><init>(Lo/AutoGrowArray;Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;Ljava/lang/String;Ljava/lang/Integer;ZILo/amc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_1
    iget-object v1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {v1}, Lo/NumberKeyListener;->a()Lo/AutoGrowArray;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 44
    new-instance v1, Lo/MetaKeyKeyListener;

    sget-object v4, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;->c:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    iget-object v5, p0, Lo/SingleLineTransformationMethod;->a:Ljava/lang/String;

    const-string v2, "gatewayText"

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {v2}, Lo/NumberKeyListener;->f()Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lo/MetaKeyKeyListener;-><init>(Lo/AutoGrowArray;Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;Ljava/lang/String;Ljava/lang/Integer;ZILo/amc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_2
    iget-object v1, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {v1}, Lo/NumberKeyListener;->e()Lo/AutoGrowArray;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 48
    new-instance v1, Lo/MetaKeyKeyListener;

    sget-object v4, Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;->d:Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;

    iget-object v5, p0, Lo/SingleLineTransformationMethod;->e:Ljava/lang/String;

    const-string v2, "thirdPartyText"

    invoke-static {v5, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/SingleLineTransformationMethod;->i:Lo/NumberKeyListener;

    invoke-virtual {v2}, Lo/NumberKeyListener;->n()Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x10

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lo/MetaKeyKeyListener;-><init>(Lo/AutoGrowArray;Lcom/netflix/mediaclient/acquisition2/components/koreaLegal/CheckBoxType;Ljava/lang/String;Ljava/lang/Integer;ZILo/amc;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    new-instance v1, Lo/SingleLineTransformationMethod$TaskDescription;

    invoke-direct {v1}, Lo/SingleLineTransformationMethod$TaskDescription;-><init>()V

    check-cast v1, Ljava/util/Comparator;

    invoke-static {v0, v1}, Lo/akz;->e(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_4
    return-object v0
.end method
