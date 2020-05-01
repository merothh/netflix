.class Lo/KeepalivePacketData$Application;
.super Landroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/KeepalivePacketData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Application"
.end annotation


# instance fields
.field final synthetic c:Lo/KeepalivePacketData;


# direct methods
.method constructor <init>(Lo/KeepalivePacketData;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lo/KeepalivePacketData$Application;->c:Lo/KeepalivePacketData;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lo/KeepalivePacketData;
    .locals 1

    .line 236
    iget-object v0, p0, Lo/KeepalivePacketData$Application;->c:Lo/KeepalivePacketData;

    return-object v0
.end method
