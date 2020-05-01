.class public final Lo/UP$ColorStateList;
.super Lo/UP;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/UP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorStateList"
.end annotation


# instance fields
.field private final c:Lo/Me;


# direct methods
.method public constructor <init>(Lo/Me;)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, v0}, Lo/UP;-><init>(Lo/amc;)V

    iput-object p1, p0, Lo/UP$ColorStateList;->c:Lo/Me;

    return-void
.end method


# virtual methods
.method public final e()Lo/Me;
    .locals 1

    .line 125
    iget-object v0, p0, Lo/UP$ColorStateList;->c:Lo/Me;

    return-object v0
.end method
