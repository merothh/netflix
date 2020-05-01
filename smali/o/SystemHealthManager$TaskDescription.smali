.class Lo/SystemHealthManager$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/SystemHealthManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskDescription"
.end annotation


# instance fields
.field a:Ljava/util/regex/Pattern;

.field final synthetic c:Lo/SystemHealthManager;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/SystemHealthManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lo/SystemHealthManager$TaskDescription;->c:Lo/SystemHealthManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lo/SystemHealthManager$TaskDescription;->a:Ljava/util/regex/Pattern;

    .line 17
    iput-object p3, p0, Lo/SystemHealthManager$TaskDescription;->d:Ljava/lang/String;

    return-void
.end method
