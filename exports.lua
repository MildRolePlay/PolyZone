local zones = {};

function addCircleZone(id, center, radius, options)
    center = vector3(center.x, center.y, center.z);
    zones[id] = CircleZone:Create(center, radius, options)
end

function addBoxZone(id, center, length, width, options)
    center = vector3(center.x, center.y, center.z);
    zones[id] = BoxZone:Create(center, length, width, options);
end

function addPolyZone(id, points, options)
    zones[id] = PolyZone:Create(points, options);
end

function removeZone(id)
    if zones[id] then
        zones[id] = nil;
    end
end

function isPointInside(id, point)
    if zones[id] then
        return zones[id]:isPointInside(point);
    end
    return false;
end

exports('addCircleZone', addCircleZone);
exports('addBoxZone', addBoxZone);
exports('addPolyZone', addPolyZone);
exports('removeZone', removeZone);

exports('isPointInside', isPointInside);