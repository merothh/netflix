.class Lo/CameraDeviceUserShim$Application;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/CameraDeviceUserShim$Activity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CameraDeviceUserShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Application"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/CameraDeviceUserShim$5;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lo/CameraDeviceUserShim$Application;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 29
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
