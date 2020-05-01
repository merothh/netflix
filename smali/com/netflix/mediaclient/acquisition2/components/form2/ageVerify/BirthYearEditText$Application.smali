.class public final Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText;->d(Lo/Hyphenator;Lo/GraphicsOperations;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lo/Hyphenator;

.field final synthetic d:Lo/GraphicsOperations;


# direct methods
.method constructor <init>(Lo/Hyphenator;Lo/GraphicsOperations;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText$Application;->b:Lo/Hyphenator;

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText$Application;->d:Lo/GraphicsOperations;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText$Application;->d:Lo/GraphicsOperations;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/GraphicsOperations;->c()V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 45
    iget-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/ageVerify/BirthYearEditText$Application;->b:Lo/Hyphenator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lo/Hyphenator;->a()Lo/BidiFormatter;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/anv;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/BidiFormatter;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
