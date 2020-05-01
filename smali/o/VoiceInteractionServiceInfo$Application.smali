.class final Lo/VoiceInteractionServiceInfo$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/VoiceInteractionServiceInfo;->b(Lo/VoiceInteractionSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/VoiceInteractionSession;

.field final synthetic d:Lo/VoiceInteractionServiceInfo;


# direct methods
.method constructor <init>(Lo/VoiceInteractionServiceInfo;Lo/VoiceInteractionSession;)V
    .locals 0

    iput-object p1, p0, Lo/VoiceInteractionServiceInfo$Application;->d:Lo/VoiceInteractionServiceInfo;

    iput-object p2, p0, Lo/VoiceInteractionServiceInfo$Application;->a:Lo/VoiceInteractionSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 21
    iget-object p1, p0, Lo/VoiceInteractionServiceInfo$Application;->d:Lo/VoiceInteractionServiceInfo;

    iget-object v0, p0, Lo/VoiceInteractionServiceInfo$Application;->a:Lo/VoiceInteractionSession;

    invoke-static {p1, v0}, Lo/VoiceInteractionServiceInfo;->d(Lo/VoiceInteractionServiceInfo;Lo/VoiceInteractionSession;)V

    .line 22
    iget-object p1, p0, Lo/VoiceInteractionServiceInfo$Application;->a:Lo/VoiceInteractionSession;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lo/VoiceInteractionSession;->setShowValidationState(Z)V

    return-void
.end method
