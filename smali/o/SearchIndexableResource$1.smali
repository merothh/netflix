.class final Lo/SearchIndexableResource$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/SearchIndexableResource;->d(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lo/TextInputTimePickerView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lo/TextInputTimePickerView;Lo/TextInputTimePickerView;)I
    .locals 0

    .line 116
    invoke-static {p1, p2}, Lo/SearchIndexableResource;->c(Lo/TextInputTimePickerView;Lo/TextInputTimePickerView;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 113
    check-cast p1, Lo/TextInputTimePickerView;

    check-cast p2, Lo/TextInputTimePickerView;

    invoke-virtual {p0, p1, p2}, Lo/SearchIndexableResource$1;->c(Lo/TextInputTimePickerView;Lo/TextInputTimePickerView;)I

    move-result p1

    return p1
.end method
