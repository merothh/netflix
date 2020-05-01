.class public Lo/CO$TaskDescription;
.super Lo/CO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# static fields
.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 329
    sget-object v0, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->p:Lcom/netflix/mediaclient/service/logging/perf/Sessions;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/logging/perf/Sessions;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/CO$TaskDescription;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 328
    invoke-direct {p0}, Lo/CO;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 333
    sget-object v0, Lo/CO$TaskDescription;->c:Ljava/lang/String;

    return-object v0
.end method
