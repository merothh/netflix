.class Lo/nj$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# instance fields
.field b:Lo/aie;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lo/aie;)V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Lo/nj$Activity;->d:Ljava/lang/String;

    .line 266
    iput-object p2, p0, Lo/nj$Activity;->b:Lo/aie;

    return-void
.end method
