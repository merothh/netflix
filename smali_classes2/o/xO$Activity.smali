.class public Lo/xO$Activity;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Activity"
.end annotation


# instance fields
.field b:Lo/xO;

.field final synthetic e:Lo/xO;


# direct methods
.method public constructor <init>(Lo/xO;Lo/xO;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lo/xO$Activity;->e:Lo/xO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lo/xO$Activity;->b:Lo/xO;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/xO$Activity;->b:Lo/xO;

    invoke-virtual {v0}, Lo/xO;->e()V

    return-void
.end method
