.class public final Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/netflix/cl/model/InputKind;

.field private final d:Z

.field private final e:Lcom/netflix/cl/model/AppView;

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    sget-object v0, Lcom/netflix/cl/model/InputKind;->email:Lcom/netflix/cl/model/InputKind;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->c:Lcom/netflix/cl/model/InputKind;

    .line 117
    sget-object v0, Lcom/netflix/cl/model/AppView;->emailInput:Lcom/netflix/cl/model/AppView;

    iput-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->e:Lcom/netflix/cl/model/AppView;

    const/4 v0, 0x4

    .line 118
    iput v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->b:I

    const/16 v0, 0x14

    .line 119
    iput v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->a:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->h:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->d:Z

    return v0
.end method

.method public b()Lcom/netflix/cl/model/InputKind;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->c:Lcom/netflix/cl/model/InputKind;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->b:I

    return v0
.end method

.method public d()Lcom/netflix/cl/model/AppView;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->e:Lcom/netflix/cl/model/AppView;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->a:I

    return v0
.end method

.method public g()Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;
    .locals 3

    .line 122
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->c()I

    move-result v0

    new-instance v1, Lo/amD;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->e()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lo/amD;-><init>(II)V

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lo/amD;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 123
    :cond_2
    sget-object v2, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;->a:Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditTextViewModel$Error;

    :goto_2
    return-object v2
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/FormViewEditText$Activity;->h:Ljava/lang/String;

    return-object v0
.end method
