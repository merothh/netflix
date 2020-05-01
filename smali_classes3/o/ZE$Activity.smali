.class public Lo/ZE$Activity;
.super Lo/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ZE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Activity"
.end annotation


# instance fields
.field b:Ljava/lang/Long;

.field c:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 384
    invoke-direct {p0}, Lo/Enum;-><init>()V

    const/4 v0, 0x0

    .line 385
    iput-object v0, p0, Lo/ZE$Activity;->c:Ljava/lang/Long;

    .line 388
    iput-object v0, p0, Lo/ZE$Activity;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method protected onCleared()V
    .locals 1

    const/4 v0, 0x0

    .line 392
    iput-object v0, p0, Lo/ZE$Activity;->c:Ljava/lang/Long;

    .line 393
    iput-object v0, p0, Lo/ZE$Activity;->b:Ljava/lang/Long;

    return-void
.end method
