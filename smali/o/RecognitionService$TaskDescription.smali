.class final Lo/RecognitionService$TaskDescription;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lo/RecognitionService;

.field final synthetic e:Lo/AndroidCharacter;


# direct methods
.method constructor <init>(Lo/RecognitionService;Lo/AndroidCharacter;)V
    .locals 0

    iput-object p1, p0, Lo/RecognitionService$TaskDescription;->b:Lo/RecognitionService;

    iput-object p2, p0, Lo/RecognitionService$TaskDescription;->e:Lo/AndroidCharacter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lo/RecognitionService$TaskDescription;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 3

    .line 83
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lo/RecognitionService$TaskDescription;->e:Lo/AndroidCharacter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/AndroidCharacter;->setShowValidationState(Z)V

    .line 85
    iget-object v0, p0, Lo/RecognitionService$TaskDescription;->b:Lo/RecognitionService;

    iget-object v1, p0, Lo/RecognitionService$TaskDescription;->e:Lo/AndroidCharacter;

    const-string v2, "it"

    invoke-static {p1, v2}, Lo/amh;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lo/RecognitionService;->access$provideUxFeedback(Lo/RecognitionService;Lo/AndroidCharacter;Z)V

    :cond_0
    return-void
.end method
