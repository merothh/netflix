.class Lo/CameraDeviceImpl$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UserInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/CameraDeviceImpl;-><init>(Lo/CameraDeviceImpl$ActionBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/UserInfo<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lo/CameraDeviceImpl;


# direct methods
.method constructor <init>(Lo/CameraDeviceImpl;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lo/CameraDeviceImpl$5;->e:Lo/CameraDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    .line 148
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Object;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lo/CameraDeviceImpl$5;->c()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
