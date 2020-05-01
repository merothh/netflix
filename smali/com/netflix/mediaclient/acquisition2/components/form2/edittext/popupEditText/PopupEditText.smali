.class public abstract Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;
.super Lo/TextDirectionHeuristics;
.source ""


# static fields
.field static final synthetic e:[Lo/amT;


# instance fields
.field private final b:Lo/ams;

.field private final c:Lo/ams;

.field private d:Lo/TimeFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/TimeFormatter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lo/GraphicsOperations;

.field public stringProvider:Lo/InputBinding;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;

    const/4 v1, 0x2

    new-array v1, v1, [Lo/amT;

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v3

    const-string v4, "inputLayout"

    const-string v5, "getInputLayout()Lcom/google/android/material/textfield/TextInputLayout;"

    invoke-direct {v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v2

    check-cast v2, Lo/amT;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    invoke-static {v0}, Lo/amf;->e(Ljava/lang/Class;)Lo/amJ;

    move-result-object v0

    const-string v3, "editText"

    const-string v4, "getEditText()Landroid/widget/EditText;"

    invoke-direct {v2, v0, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lo/amH;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lo/amf;->a(Lkotlin/jvm/internal/PropertyReference1;)Lo/amU;

    move-result-object v0

    check-cast v0, Lo/amT;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->e:[Lo/amT;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lo/TextDirectionHeuristics;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 28
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->hZ:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->c:Lo/ams;

    .line 33
    sget p2, Lcom/netflix/mediaclient/ui/R$Fragment;->ft:I

    invoke-static {p0, p2}, Lo/NfcV;->a(Landroid/view/View;I)Lo/ams;

    move-result-object p2

    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->b:Lo/ams;

    .line 38
    sget p2, Lcom/netflix/mediaclient/ui/R$Dialog;->bu:I

    move-object p3, p0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-static {p1, p2, p3}, Lo/TextDirectionHeuristics;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    new-instance p1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText$StateListAnimator;

    invoke-direct {p1, p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText$StateListAnimator;-><init>(Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;)V

    check-cast p1, Landroid/view/View$OnClickListener;

    .line 44
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->d()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILo/amc;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    .line 22
    check-cast p2, Landroid/util/AttributeSet;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 24
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public abstract a(Lo/GraphicsOperations;)Landroid/app/AlertDialog;
.end method

.method public final b()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->c:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->e:[Lo/amT;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method public final d()Landroid/widget/EditText;
    .locals 3

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->b:Lo/ams;

    sget-object v1, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->e:[Lo/amT;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lo/ams;->b(Ljava/lang/Object;Lo/amT;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    return-object v0
.end method

.method public d(Lo/TimeFormatter;Lo/GraphicsOperations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/TimeFormatter<",
            "Ljava/lang/Integer;",
            ">;",
            "Lo/GraphicsOperations;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-super {p0}, Lo/TextDirectionHeuristics;->c()V

    .line 50
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->d:Lo/TimeFormatter;

    .line 51
    iput-object p2, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->i:Lo/GraphicsOperations;

    if-eqz p1, :cond_1

    .line 53
    invoke-virtual {p1}, Lo/TimeFormatter;->d()I

    move-result p1

    .line 54
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->b()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->stringProvider:Lo/InputBinding;

    if-nez v0, :cond_0

    const-string v1, "stringProvider"

    invoke-static {v1}, Lo/amh;->d(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lo/InputBinding;->c(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 6

    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->i:Lo/GraphicsOperations;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->a(Lo/GraphicsOperations;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const-string v2, "alertDialog.listView"

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/netflix/mediaclient/ui/R$Application;->L:I

    invoke-static {v4, v5}, Lo/OnSystemUiVisibilityChangeListener;->d(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 73
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method protected final j()Lo/TimeFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/TimeFormatter<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->d:Lo/TimeFormatter;

    return-object v0
.end method

.method public final setStringProvider(Lo/InputBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->stringProvider:Lo/InputBinding;

    return-void
.end method

.method public final setValidationState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->b()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cM:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/acquisition2/components/form2/edittext/popupEditText/PopupEditText;->b()Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    sget v0, Lcom/netflix/mediaclient/ui/R$Activity;->cJ:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
