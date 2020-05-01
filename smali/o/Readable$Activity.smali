.class Lo/Readable$Activity;
.super Lo/Readable$TaskDescription;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Readable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Activity"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/Readable$Dialog;)V
    .locals 0

    .line 871
    invoke-direct {p0, p1, p2}, Lo/Readable$TaskDescription;-><init>(Landroid/content/Context;Lo/Readable$Dialog;)V

    return-void
.end method


# virtual methods
.method protected a(Lo/Readable$Application$ActionBar;Lo/NoSuchFieldException$Application;)V
    .locals 0

    .line 877
    invoke-super {p0, p1, p2}, Lo/Readable$TaskDescription;->a(Lo/Readable$Application$ActionBar;Lo/NoSuchFieldException$Application;)V

    .line 879
    iget-object p1, p1, Lo/Readable$Application$ActionBar;->a:Ljava/lang/Object;

    invoke-static {p1}, Lo/Number$ActionBar;->c(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2, p1}, Lo/NoSuchFieldException$Application;->a(I)Lo/NoSuchFieldException$Application;

    return-void
.end method
