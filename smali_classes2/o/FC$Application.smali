.class public final Lo/FC$Application;
.super Lo/FC;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Application"
.end annotation


# instance fields
.field private final b:Lo/Bc;


# direct methods
.method public constructor <init>(Lo/Bc;)V
    .locals 1

    const-string v0, "videoDetails"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, v0}, Lo/FC;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/FC$Application;->b:Lo/Bc;

    return-void
.end method


# virtual methods
.method public final c()Lo/Bc;
    .locals 1

    .line 81
    iget-object v0, p0, Lo/FC$Application;->b:Lo/Bc;

    return-object v0
.end method
