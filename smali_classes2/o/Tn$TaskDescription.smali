.class public final Lo/Tn$TaskDescription;
.super Lo/Ai;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/Tn;->a(Lcom/netflix/mediaclient/ui/player/PlanChoice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lo/Tn;


# direct methods
.method constructor <init>(Lo/Tn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lo/Tn$TaskDescription;->a:Lo/Tn;

    invoke-direct {p0}, Lo/Ai;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lo/Tn$TaskDescription;->a:Lo/Tn;

    invoke-virtual {v0, p1}, Lo/Tn;->d(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method
