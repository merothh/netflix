.class public final Lo/Filter;
.super Landroid/graphics/drawable/RippleDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Filter$Activity;
    }
.end annotation


# static fields
.field public static final d:Lo/Filter$Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/Filter$Activity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/Filter$Activity;-><init>(Lo/amc;)V

    sput-object v0, Lo/Filter;->d:Lo/Filter$Activity;

    return-void
.end method

.method public constructor <init>(Lo/FilterQueryProvider;)V
    .locals 3

    const-string v0, "attributes"

    invoke-static {p1, v0}, Lo/amh;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lo/Filter;->d:Lo/Filter$Activity;

    invoke-static {v0, p1}, Lo/Filter$Activity;->d(Lo/Filter$Activity;Lo/FilterQueryProvider;)Landroid/content/res/ColorStateList;

    move-result-object v0

    sget-object v1, Lo/Filter;->d:Lo/Filter$Activity;

    invoke-static {v1, p1}, Lo/Filter$Activity;->c(Lo/Filter$Activity;Lo/FilterQueryProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lo/Filter;->d:Lo/Filter$Activity;

    invoke-static {v2, p1}, Lo/Filter$Activity;->a(Lo/Filter$Activity;Lo/FilterQueryProvider;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
