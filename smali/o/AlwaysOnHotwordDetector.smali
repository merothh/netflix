.class public final Lo/AlwaysOnHotwordDetector;
.super Lo/RecognitionService;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RecognitionService<",
        "Lo/VoiceInteractionService;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Lo/UnicodeScript;

.field private final e:Lo/InputBinding;


# direct methods
.method public constructor <init>(Lo/TextClassificationManager;Lo/InputBinding;Lo/UnicodeScript;Landroid/view/View;)V
    .locals 1

    const-string v0, "signupLogger"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stringProvider"

    invoke-static {p2, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p3, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p4, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2, p4}, Lo/RecognitionService;-><init>(Lo/TextClassificationManager;Lo/InputBinding;Landroid/view/View;)V

    iput-object p2, p0, Lo/AlwaysOnHotwordDetector;->e:Lo/InputBinding;

    iput-object p3, p0, Lo/AlwaysOnHotwordDetector;->c:Lo/UnicodeScript;

    return-void
.end method

.method private final c(Lo/VoiceInteractionService;)V
    .locals 3

    .line 22
    invoke-virtual {p1}, Lo/VoiceInteractionService;->d()Lo/Cloneable;

    move-result-object v0

    iget-object v1, p0, Lo/AlwaysOnHotwordDetector;->c:Lo/UnicodeScript;

    new-instance v2, Lo/AlwaysOnHotwordDetector$Application;

    invoke-direct {v2, p0, p1}, Lo/AlwaysOnHotwordDetector$Application;-><init>(Lo/AlwaysOnHotwordDetector;Lo/VoiceInteractionService;)V

    check-cast v2, Lo/ClassFormatError;

    invoke-virtual {v0, v1, v2}, Lo/Cloneable;->a(Lo/UnicodeScript;Lo/ClassFormatError;)V

    return-void
.end method


# virtual methods
.method public synthetic bind(Lo/AndroidCharacter;)V
    .locals 0

    .line 9
    check-cast p1, Lo/VoiceInteractionService;

    invoke-virtual {p0, p1}, Lo/AlwaysOnHotwordDetector;->e(Lo/VoiceInteractionService;)V

    return-void
.end method

.method public e(Lo/VoiceInteractionService;)V
    .locals 1

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    move-object v0, p1

    check-cast v0, Lo/AndroidCharacter;

    invoke-super {p0, v0}, Lo/RecognitionService;->bind(Lo/AndroidCharacter;)V

    .line 18
    invoke-direct {p0, p1}, Lo/AlwaysOnHotwordDetector;->c(Lo/VoiceInteractionService;)V

    return-void
.end method
