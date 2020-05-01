.class public Lo/zE$TaskDescription;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation


# instance fields
.field public b:Lo/agM;

.field public c:Lo/ahS;

.field public e:Lo/ahX;


# direct methods
.method public constructor <init>(Lo/ahS;Lo/ahX;Lo/agM;)V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p1, p0, Lo/zE$TaskDescription;->c:Lo/ahS;

    .line 324
    iput-object p2, p0, Lo/zE$TaskDescription;->e:Lo/ahX;

    .line 325
    iput-object p3, p0, Lo/zE$TaskDescription;->b:Lo/agM;

    return-void
.end method
