.class public final Lo/RecognizerResultsIntent;
.super Lo/RecognitionService;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RecognitionService<",
        "Lo/BoringLayout;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lo/RecognitionService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public b(Lo/BoringLayout;)V
    .locals 1

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    check-cast p1, Lo/AndroidCharacter;

    invoke-super {p0, p1}, Lo/RecognitionService;->bind(Lo/AndroidCharacter;)V

    .line 19
    invoke-virtual {p0}, Lo/RecognizerResultsIntent;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public synthetic bind(Lo/AndroidCharacter;)V
    .locals 0

    .line 11
    check-cast p1, Lo/BoringLayout;

    invoke-virtual {p0, p1}, Lo/RecognizerResultsIntent;->b(Lo/BoringLayout;)V

    return-void
.end method
