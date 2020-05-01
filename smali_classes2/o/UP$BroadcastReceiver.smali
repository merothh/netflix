.class public final Lo/UP$BroadcastReceiver;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BroadcastReceiver"
.end annotation


# instance fields
.field private final b:Lo/Tv;


# direct methods
.method public constructor <init>(Lo/Tv;)V
    .locals 1

    const-string v0, "playbackWrapper"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$BroadcastReceiver;->b:Lo/Tv;

    return-void
.end method


# virtual methods
.method public final a()Lo/Tv;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/UP$BroadcastReceiver;->b:Lo/Tv;

    return-object v0
.end method
