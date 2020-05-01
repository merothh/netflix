.class public Lo/agv;
.super Lo/agp;
.source ""


# instance fields
.field private final d:Lo/AK;


# direct methods
.method public constructor <init>(Lo/AK;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lo/agp;-><init>(Lo/TableLayout;)V

    .line 18
    iput-object p1, p0, Lo/agv;->d:Lo/AK;

    return-void
.end method


# virtual methods
.method public bb()Lo/AK;
    .locals 1

    .line 24
    iget-object v0, p0, Lo/agv;->d:Lo/AK;

    return-object v0
.end method
