.class Lo/ot$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final c:Lcom/netflix/mediaclient/android/app/Status;

.field final d:Lo/oj;

.field final synthetic e:Lo/ot;


# direct methods
.method constructor <init>(Lo/ot;Lcom/netflix/mediaclient/android/app/Status;Lo/oj;)V
    .locals 0

    .line 1343
    iput-object p1, p0, Lo/ot$TaskDescription;->e:Lo/ot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1344
    iput-object p2, p0, Lo/ot$TaskDescription;->c:Lcom/netflix/mediaclient/android/app/Status;

    .line 1345
    iput-object p3, p0, Lo/ot$TaskDescription;->d:Lo/oj;

    return-void
.end method
