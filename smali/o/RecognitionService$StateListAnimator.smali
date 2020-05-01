.class final Lo/RecognitionService$StateListAnimator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecognitionService;->bindRxListeners(Lo/AndroidCharacter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/RecognitionService;

.field final synthetic d:Lo/AndroidCharacter;


# direct methods
.method constructor <init>(Lo/RecognitionService;Lo/AndroidCharacter;)V
    .locals 0

    iput-object p1, p0, Lo/RecognitionService$StateListAnimator;->b:Lo/RecognitionService;

    iput-object p2, p0, Lo/RecognitionService$StateListAnimator;->d:Lo/AndroidCharacter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lo/RecognitionService$StateListAnimator;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d(Ljava/lang/CharSequence;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lo/RecognitionService$StateListAnimator;->d:Lo/AndroidCharacter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/AndroidCharacter;->setUserFacingString(Ljava/lang/String;)V

    .line 93
    iget-object p1, p0, Lo/RecognitionService$StateListAnimator;->b:Lo/RecognitionService;

    iget-object v0, p0, Lo/RecognitionService$StateListAnimator;->d:Lo/AndroidCharacter;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lo/RecognitionService;->access$provideUxFeedback(Lo/RecognitionService;Lo/AndroidCharacter;Z)V

    return-void
.end method
