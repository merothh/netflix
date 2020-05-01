.class public Lo/tm$ActionBar;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionBar"
.end annotation


# instance fields
.field private final e:Lo/tm$TaskDescription;


# direct methods
.method public constructor <init>(Lo/tm$TaskDescription;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lo/tm$ActionBar;->e:Lo/tm$TaskDescription;

    return-void
.end method


# virtual methods
.method public c(J)Lo/tm;
    .locals 3

    .line 91
    new-instance v0, Lo/tm;

    iget-object v1, p0, Lo/tm$ActionBar;->e:Lo/tm$TaskDescription;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lo/tm;-><init>(JLo/tm$TaskDescription;Lo/tm$3;)V

    return-object v0
.end method
