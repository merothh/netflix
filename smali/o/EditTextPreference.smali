.class public final Lo/EditTextPreference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstanceCountViolation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/EditTextPreference$StateListAnimator;
    }
.end annotation


# static fields
.field public static final d:Lo/EditTextPreference$StateListAnimator;


# instance fields
.field private final b:Lo/Violation;

.field private final c:Lo/Violation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/EditTextPreference$StateListAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/EditTextPreference$StateListAnimator;-><init>(Lo/amc;)V

    sput-object v0, Lo/EditTextPreference;->d:Lo/EditTextPreference$StateListAnimator;

    return-void
.end method

.method public constructor <init>(Lo/CheckBoxPreference;J)V
    .locals 2

    const-string v0, "sqliteDb"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lo/Violation;

    const-string v1, "DELETE FROM falcor_leafs WHERE path = ?"

    invoke-direct {v0, p1, v1, p2, p3}, Lo/Violation;-><init>(Lo/CheckBoxPreference;Ljava/lang/String;J)V

    iput-object v0, p0, Lo/EditTextPreference;->c:Lo/Violation;

    .line 27
    new-instance v0, Lo/Violation;

    const-string v1, "DELETE FROM falcor_leafs WHERE path LIKE ?"

    invoke-direct {v0, p1, v1, p2, p3}, Lo/Violation;-><init>(Lo/CheckBoxPreference;Ljava/lang/String;J)V

    iput-object v0, p0, Lo/EditTextPreference;->b:Lo/Violation;

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 1

    .line 30
    iget-object v0, p0, Lo/EditTextPreference;->c:Lo/Violation;

    invoke-virtual {v0, p1}, Lo/Violation;->c(Z)V

    .line 31
    iget-object v0, p0, Lo/EditTextPreference;->b:Lo/Violation;

    invoke-virtual {v0, p1}, Lo/Violation;->c(Z)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/EditTextPreference;->c:Lo/Violation;

    invoke-virtual {v0}, Lo/Violation;->close()V

    .line 36
    iget-object v0, p0, Lo/EditTextPreference;->b:Lo/Violation;

    invoke-virtual {v0}, Lo/Violation;->close()V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pathPrefix"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lo/EditTextPreference;->b:Lo/Violation;

    invoke-virtual {v0, p1}, Lo/Violation;->c(Ljava/lang/String;)V

    return-void
.end method
