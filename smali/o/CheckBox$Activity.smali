.class public final Lo/CheckBox$Activity;
.super Lo/MessagePdu;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CheckBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Activity"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string v0, "AnimatedLoadingAndErrorWrapper"

    .line 21
    invoke-direct {p0, v0}, Lo/MessagePdu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lo/amc;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lo/CheckBox$Activity;-><init>()V

    return-void
.end method

.method private final b(Landroid/content/Context;Lo/CheckBox$ActionBar;)Lo/ECPrivateKeySpec;
    .locals 4

    .line 32
    :try_start_0
    invoke-virtual {p2}, Lo/CheckBox$ActionBar;->e()I

    move-result v0

    invoke-static {p1, v0}, Lo/ECPrivateKeySpec;->b(Landroid/content/Context;I)Lo/ECPrivateKeySpec;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    invoke-static {}, Lo/Switch;->b()Lo/SpinnerAdapter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start or load animatedVectorDrawable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lo/CheckBox$ActionBar;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p2}, Lo/CheckBox$ActionBar;->e()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, p1, v0}, Lo/SpinnerAdapter;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public static final synthetic b(Lo/CheckBox$Activity;Landroid/content/Context;Lo/CheckBox$ActionBar;)Lo/ECPrivateKeySpec;
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lo/CheckBox$Activity;->b(Landroid/content/Context;Lo/CheckBox$ActionBar;)Lo/ECPrivateKeySpec;

    move-result-object p0

    return-object p0
.end method
