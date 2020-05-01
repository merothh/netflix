.class Lo/oT$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/oT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field final synthetic b:Lo/oT;

.field public c:Lcom/netflix/mediaclient/android/app/Status;

.field public e:Lo/sE;


# direct methods
.method constructor <init>(Lo/oT;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lo/oT$TaskDescription;->b:Lo/oT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    sget-object p1, Lo/LegacyErrorStrings;->b:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    iput-object p1, p0, Lo/oT$TaskDescription;->c:Lcom/netflix/mediaclient/android/app/Status;

    const/4 p1, 0x0

    .line 361
    iput-object p1, p0, Lo/oT$TaskDescription;->e:Lo/sE;

    return-void
.end method
