.class Lo/wW$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/wW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field private displayed:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shown"
    .end annotation
.end field

.field private downloadableId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dlid"
    .end annotation
.end field

.field private expectedToShow:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expected"
    .end annotation
.end field

.field private missed:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "missed"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/xK;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iget-object v0, p1, Lo/xK;->b:Ljava/lang/String;

    iput-object v0, p0, Lo/wW$Activity;->downloadableId:Ljava/lang/String;

    .line 58
    iget v0, p1, Lo/xK;->c:I

    iput v0, p0, Lo/wW$Activity;->expectedToShow:I

    .line 59
    iget v0, p1, Lo/xK;->a:I

    iput v0, p0, Lo/wW$Activity;->displayed:I

    .line 60
    iget v0, p1, Lo/xK;->c:I

    iget p1, p1, Lo/xK;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Lo/wW$Activity;->missed:I

    return-void
.end method
