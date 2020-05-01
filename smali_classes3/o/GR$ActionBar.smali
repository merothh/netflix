.class public final Lo/GR$ActionBar;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/GR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionBar"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "ExtrasEpoxyModelWithHolder"

    .line 24
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lo/GR$ActionBar;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lo/ListView;ZLjava/lang/Integer;)V
    .locals 1

    const-string v0, "button"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 36
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 37
    move-object p3, p1

    check-cast p3, Landroid/widget/CompoundButton;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {p3, v0}, Lo/Binder;->d(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 38
    invoke-virtual {p1, p2}, Lo/ListView;->setTextColor(I)V

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_1

    .line 43
    move-object p2, p1

    check-cast p2, Landroid/widget/CompoundButton;

    invoke-virtual {p1}, Lo/ListView;->e()Lo/FilterQueryProvider;

    move-result-object p3

    invoke-virtual {p3}, Lo/FilterQueryProvider;->b()Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-static {p2, p3}, Lo/Binder;->d(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    .line 44
    invoke-virtual {p1}, Lo/ListView;->e()Lo/FilterQueryProvider;

    move-result-object p2

    invoke-virtual {p2}, Lo/FilterQueryProvider;->d()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo/ListView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method
