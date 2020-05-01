.class final Lo/ApduServiceInfo$TaskDescription;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ApduServiceInfo;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic e:Lo/ApduServiceInfo;


# direct methods
.method constructor <init>(Lo/ApduServiceInfo;)V
    .locals 0

    iput-object p1, p0, Lo/ApduServiceInfo$TaskDescription;->e:Lo/ApduServiceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 56
    iget-object v0, p0, Lo/ApduServiceInfo$TaskDescription;->e:Lo/ApduServiceInfo;

    invoke-static {v0}, Lo/ApduServiceInfo;->b(Lo/ApduServiceInfo;)Landroid/renderscript/RenderScript;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 58
    sget-object v0, Lo/ApduServiceInfo;->e:Lo/ApduServiceInfo$ActionBar;

    check-cast v0, Lo/MessagePdu;

    return-void
.end method
