.class public final Lo/Xml;
.super Lo/ChangeScroll;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private l:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

.field private final m:Lo/Cloneable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/Cloneable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private final p:Lo/InputBinding;

.field private final q:Lo/ApkSignatureSchemeV2Verifier;

.field private final t:Lo/XmlPullAttributes;


# direct methods
.method public constructor <init>(Lo/InputBinding;Lo/XmlPullAttributes;Lo/ApkSignatureSchemeV2Verifier;Lo/TextClassifierImpl;Lo/TextClassifierService;)V
    .locals 1

    const-string v0, "stringProvider"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedData"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleData"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signupNetworkManager"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessageViewModel"

    invoke-static {p5, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p4, p1, p5}, Lo/ChangeScroll;-><init>(Lo/TextClassifierImpl;Lo/InputBinding;Lo/TextClassifierService;)V

    iput-object p1, p0, Lo/Xml;->p:Lo/InputBinding;

    iput-object p2, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    iput-object p3, p0, Lo/Xml;->q:Lo/ApkSignatureSchemeV2Verifier;

    .line 57
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->b()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 58
    iget-object p1, p0, Lo/Xml;->p:Lo/InputBinding;

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->og:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 59
    iget-object p3, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p3}, Lo/XmlPullAttributes;->b()Ljava/lang/String;

    move-result-object p3

    const-string p4, "offerRefundDaysRemaining"

    invoke-virtual {p1, p4, p3}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 57
    :goto_0
    iput-object p1, p0, Lo/Xml;->d:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lo/Xml;->p:Lo/InputBinding;

    sget p3, Lcom/netflix/mediaclient/ui/R$AssistContent;->oc:I

    invoke-virtual {p1, p3}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    .line 67
    :goto_1
    iput-object p1, p0, Lo/Xml;->a:Ljava/lang/String;

    .line 75
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->c()Ljava/lang/String;

    move-result-object p1

    const-string p3, "planPrice"

    const-string p4, "DATE"

    if-eqz p1, :cond_3

    .line 76
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->j()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 77
    iget-object p1, p0, Lo/Xml;->p:Lo/InputBinding;

    sget p5, Lcom/netflix/mediaclient/ui/R$AssistContent;->ok:I

    invoke-virtual {p1, p5}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 78
    iget-object p5, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p5}, Lo/XmlPullAttributes;->j()Ljava/lang/String;

    move-result-object p5

    const-string v0, "timePeriod"

    invoke-virtual {p1, v0, p5}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 79
    iget-object p5, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p5}, Lo/XmlPullAttributes;->d()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p3, p5}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 82
    :cond_2
    iget-object p1, p0, Lo/Xml;->p:Lo/InputBinding;

    sget p5, Lcom/netflix/mediaclient/ui/R$AssistContent;->ob:I

    invoke-virtual {p1, p5}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 83
    iget-object p5, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p5}, Lo/XmlPullAttributes;->i()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p4, p5}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, p2

    .line 75
    :goto_2
    iput-object p1, p0, Lo/Xml;->e:Ljava/lang/String;

    .line 109
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 110
    iget-object p1, p0, Lo/Xml;->p:Lo/InputBinding;

    sget p5, Lcom/netflix/mediaclient/ui/R$AssistContent;->ob:I

    invoke-virtual {p1, p5}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 111
    iget-object p5, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p5}, Lo/XmlPullAttributes;->i()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p4, p5}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    move-object p1, p2

    .line 109
    :goto_3
    iput-object p1, p0, Lo/Xml;->c:Ljava/lang/String;

    .line 118
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 119
    iget-object p1, p0, Lo/Xml;->p:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->of:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object p1

    .line 120
    iget-object p2, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p2}, Lo/XmlPullAttributes;->h()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string p4, "(this as java.lang.String).toLowerCase()"

    invoke-static {p2, p4}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    goto :goto_4

    :cond_5
    const-string p2, "other"

    :goto_4
    const-string p4, "planBillingFrequency"

    invoke-virtual {p1, p4, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 121
    iget-object p2, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p2}, Lo/XmlPullAttributes;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object p2

    .line 118
    :cond_6
    iput-object p2, p0, Lo/Xml;->i:Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lo/Xml;->p:Lo/InputBinding;

    sget p2, Lcom/netflix/mediaclient/ui/R$AssistContent;->od:I

    invoke-virtual {p1, p2}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/Xml;->j:Ljava/lang/String;

    .line 156
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/Xml;->h:Ljava/lang/String;

    .line 162
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/Xml;->f:Ljava/lang/String;

    .line 169
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->k()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 170
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p2}, Lo/XmlPullAttributes;->m()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p2}, Lo/XmlPullAttributes;->k()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 172
    :cond_7
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->k()Ljava/lang/String;

    move-result-object p1

    .line 169
    :goto_5
    iput-object p1, p0, Lo/Xml;->g:Ljava/lang/String;

    .line 213
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->w()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/Xml;->n:Ljava/lang/String;

    .line 219
    iget-object p1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {p1}, Lo/XmlPullAttributes;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/Xml;->k:Ljava/lang/String;

    .line 259
    new-instance p1, Lo/Cloneable;

    invoke-direct {p1}, Lo/Cloneable;-><init>()V

    iput-object p1, p0, Lo/Xml;->m:Lo/Cloneable;

    return-void
.end method

.method private final E()Z
    .locals 2

    .line 180
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EU_DIRECT_DEBIT"

    invoke-static {v0, v1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final synthetic d(Lo/Xml;)Lo/XmlPullAttributes;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    return-object p0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 2

    .line 227
    invoke-virtual {p0}, Lo/Xml;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->om:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/netflix/mediaclient/ui/R$AssistContent;->oh:I

    .line 228
    :goto_0
    iget-object v1, p0, Lo/Xml;->p:Lo/InputBinding;

    invoke-virtual {v1, v0}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final B()Z
    .locals 1

    .line 222
    invoke-direct {p0}, Lo/Xml;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final C()Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;
    .locals 1

    .line 235
    iget-object v0, p0, Lo/Xml;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    return-object v0
.end method

.method public final D()[Ljava/lang/String;
    .locals 3

    .line 238
    iget-object v0, p0, Lo/Xml;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;->getPhoneCodes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Iterable;

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lo/akz;->b(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 316
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 317
    check-cast v2, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    .line 238
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_0
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 320
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public final F()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->v()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final G()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lo/Xml;->m:Lo/Cloneable;

    return-object v0
.end method

.method public final I()V
    .locals 2

    .line 262
    invoke-virtual {p0}, Lo/Xml;->b()Lo/TextClassifierImpl;

    move-result-object v0

    new-instance v1, Lo/Xml$Activity;

    invoke-direct {v1, p0}, Lo/Xml$Activity;-><init>(Lo/Xml;)V

    check-cast v1, Lo/cb;

    invoke-virtual {v0, v1}, Lo/TextClassifierImpl;->e(Lo/cb;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const-string v0, "countryName"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lo/Xml;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;->getPhoneCodes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/akz;->e()Ljava/util/List;

    move-result-object v0

    .line 243
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;

    .line 244
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lo/amh;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    iget-object v2, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v2}, Lo/XmlPullAttributes;->q()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    .line 246
    :cond_2
    iget-object v2, p0, Lo/Xml;->m:Lo/Cloneable;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCode;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lo/Cloneable;->e(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public a()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lo/Xml;->b:Z

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->r()Lcom/netflix/android/moneyball/fields/StringField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/StringField;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d(Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lo/Xml;->l:Lcom/netflix/mediaclient/service/webclient/model/leafs/PhoneCodesData;

    return-void
.end method

.method public final e()Lo/Cloneable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/Cloneable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/Xml;->q:Lo/ApkSignatureSchemeV2Verifier;

    invoke-virtual {v0}, Lo/ApkSignatureSchemeV2Verifier;->e()Lo/Cloneable;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lo/Xml;->o:Ljava/lang/String;

    return-void
.end method

.method public final e(Z)V
    .locals 1

    .line 232
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->v()Lcom/netflix/android/moneyball/fields/BooleanField;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netflix/android/moneyball/fields/BooleanField;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    iget-object v1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v1}, Lo/XmlPullAttributes;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lo/Xml;->p:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oa:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lo/Xml;->p:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oe:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .line 41
    iget-object v0, p0, Lo/Xml;->p:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->on:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lo/Xml;->d:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 46
    iget-object v1, p0, Lo/Xml;->a:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 47
    iget-object v1, p0, Lo/Xml;->e:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 48
    invoke-virtual {p0}, Lo/Xml;->f()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 49
    invoke-virtual {p0}, Lo/Xml;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    .line 50
    iget-object v1, p0, Lo/Xml;->c:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    .line 51
    iget-object v1, p0, Lo/Xml;->i:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 52
    iget-object v1, p0, Lo/Xml;->j:Ljava/lang/String;

    const/4 v4, 0x7

    aput-object v1, v0, v4

    .line 44
    invoke-static {v0}, Lo/akz;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 313
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    return-object v1

    .line 314
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final j()V
    .locals 7

    .line 38
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->a()Lcom/netflix/android/moneyball/fields/ActionField;

    move-result-object v2

    invoke-virtual {p0}, Lo/Xml;->e()Lo/Cloneable;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lo/ChangeScroll;->c(Lo/ChangeScroll;Lcom/netflix/android/moneyball/fields/ActionField;Lo/Cloneable;Lo/TextClassificationSessionFactory;ILjava/lang/Object;)V

    return-void
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lo/Xml;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final l()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lo/Xml;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 4

    .line 146
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->n()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 149
    iget-object v2, p0, Lo/Xml;->p:Lo/InputBinding;

    invoke-virtual {v2, v0}, Lo/InputBinding;->b(Ljava/lang/String;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DAYS"

    invoke-virtual {v0, v3, v2}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    .line 131
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lo/Xml;->p:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->nX:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_1
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lo/Xml;->p:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->nV:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lo/Xml;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lo/Xml;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lo/Xml;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 3

    .line 192
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/aev;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 193
    :cond_0
    iget-object v0, p0, Lo/Xml;->p:Lo/InputBinding;

    iget-object v1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v1}, Lo/XmlPullAttributes;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oi:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->oj:I

    :goto_0
    invoke-virtual {v0, v1}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v1}, Lo/XmlPullAttributes;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "planPrice"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 3

    .line 185
    iget-object v0, p0, Lo/Xml;->p:Lo/InputBinding;

    sget v1, Lcom/netflix/mediaclient/ui/R$AssistContent;->ka:I

    invoke-virtual {v0, v1}, Lo/InputBinding;->d(I)Lo/VideoView2;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v1}, Lo/XmlPullAttributes;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "planName"

    invoke-virtual {v0, v2, v1}, Lo/VideoView2;->a(Ljava/lang/String;Ljava/lang/Object;)Lo/VideoView2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lo/VideoView2;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final t()Z
    .locals 1

    .line 176
    iget-object v0, p0, Lo/Xml;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/Xml;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final u()Z
    .locals 1

    .line 199
    invoke-virtual {p0}, Lo/Xml;->s()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Xml;->r()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lo/Xml;->E()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final v()Ljava/lang/String;
    .locals 3

    .line 204
    iget-object v0, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v0}, Lo/XmlPullAttributes;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 205
    :goto_0
    iget-object v2, p0, Lo/Xml;->t:Lo/XmlPullAttributes;

    invoke-virtual {v2}, Lo/XmlPullAttributes;->t()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v1, v2

    .line 206
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 216
    invoke-direct {p0}, Lo/Xml;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Xml;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lo/Xml;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Z
    .locals 1

    .line 210
    invoke-direct {p0}, Lo/Xml;->E()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/Xml;->v()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lo/anv;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lo/Xml;->k:Ljava/lang/String;

    return-object v0
.end method
