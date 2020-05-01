.class final Lo/HandlerThread$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/HandlerThread;-><init>(Landroid/view/View;Lo/alB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/HandlerThread;


# direct methods
.method constructor <init>(Lo/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lo/HandlerThread$5;->e:Lo/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 70
    iget-object p1, p0, Lo/HandlerThread$5;->e:Lo/HandlerThread;

    new-instance v0, Lo/CommonClock$VoiceInteractor;

    invoke-static {p1}, Lo/HandlerThread;->d(Lo/HandlerThread;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/CommonClock$VoiceInteractor;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/HandlerThread;->e(Ljava/lang/Object;)V

    return-void
.end method
