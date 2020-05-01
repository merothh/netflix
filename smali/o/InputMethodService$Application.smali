.class final Lo/InputMethodService$Application;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Application"
.end annotation


# instance fields
.field final a:[Ljava/lang/String;

.field final b:I

.field final c:I

.field final e:[Lo/InputMethodService$Activity;


# direct methods
.method public constructor <init>(II[Ljava/lang/String;[Lo/InputMethodService$Activity;)V
    .locals 0

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    iput p1, p0, Lo/InputMethodService$Application;->b:I

    .line 795
    iput p2, p0, Lo/InputMethodService$Application;->c:I

    .line 796
    iput-object p3, p0, Lo/InputMethodService$Application;->a:[Ljava/lang/String;

    .line 797
    iput-object p4, p0, Lo/InputMethodService$Application;->e:[Lo/InputMethodService$Activity;

    return-void
.end method

.method public static c(I)Lo/InputMethodService$Application;
    .locals 3

    .line 809
    new-instance v0, Lo/InputMethodService$Application;

    new-array v1, p0, [Ljava/lang/String;

    shr-int/lit8 p0, p0, 0x1

    new-array p0, p0, [Lo/InputMethodService$Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Lo/InputMethodService$Application;-><init>(II[Ljava/lang/String;[Lo/InputMethodService$Activity;)V

    return-object v0
.end method
